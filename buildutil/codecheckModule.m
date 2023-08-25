function codecheckModule(rootDir)
    arguments
        rootDir (1,1) string  = pwd();
    end

    moduleFileInfo = dir(fullfile(rootDir,"**","*.mlx*"));
    filesToCheck = fullfile(string({moduleFileInfo.folder}'),string({moduleFileInfo.name}'));
    
    additionalFileInfo = dir(fullfile(rootDir,"**","*.m"));
    filesToCheck = [filesToCheck;fullfile(string({additionalFileInfo.folder}'),string({additionalFileInfo.name}'))];
    
    if isempty(filesToCheck)
        error("thermodynamics:codeissues","No files to check.")
    end

   if isMATLABReleaseOlderThan("R2022b")
       issues = checkcode(filesToCheck);
       issues = [issues{:}];
       issueCount = size(issues,1);
   else
       % Use the new code analyzer in R2022b and later
       issues = codeIssues(filesToCheck);
       issueCount = size(issues.Issues,1);
   end

    fprintf("checked %d files with %d issue(s).\n",numel(filesToCheck),issueCount)

    % Generate the JSON files for the shields in the readme.md
    switch issueCount
        case 0
            color = "green";
        case 1
            color = "yellow";
        otherwise
            color = "red";
    end
    writeBadgeJSONFile("code issues",string(issueCount), color)
    
    if issueCount ~= 0
        if isMATLABReleaseOlderThan("R2022b")
            % pre R2022b, run checkcode without a RHS argument to display issues
            checkcode(filesToCheck)
        else
            % R2022b and later, just display issues
            disp(issues)
        end
        error("thermodynamics:codeissues","Thermodynamics requires all code check issues be resolved.")
    end
end


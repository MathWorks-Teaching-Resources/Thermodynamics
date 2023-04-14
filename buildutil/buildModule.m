function buildModule

    if isMATLABReleaseOlderThan("R2022a")
        error("thermodynamics:releaseFromLatest","This module only works on R2022b or later.")
    end
    
    prj = currentProject;
    rootDir = prj.RootFolder;

    % Check for code issues
    codecheckModule(rootDir);
    disp("code check complete.");

    % Run unit tests and capture code coverage
    testModule("ReportSubdirectory","R2023a")
    % Update Badges for GitHub.com
    badgesforModule(rootDir)
    disp("test complete");

end

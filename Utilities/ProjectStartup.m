function ProjectStartup
% Open the overview file

% Set up check for version number
releaseInfo = matlabRelease;
str = "This is release " + releaseInfo.Release + ",";
proj = currentProject;
myPath = proj.RootFolder + filesep + "Models";
if isMATLABReleaseOlderThan("R2023b")
    cd(proj.RootFolder)
    try
        if exist(fullfile("Utilities","OldVersions","MainMenuOld.mlx"),"file")
            movefile("MainMenu.mlx", fullfile("Utilities","OldVersions","MainMenuNew.mlx"))
            movefile(fullfile("Utilities","OldVersions","MainMenuOld.mlx"),fullfile(proj.RootFolder,"MainMenu.mlx"))
        end
    catch 
        disp("Failed to move MainMenu.mlx.")
    end
    try
        if exist(fullfile("Utilities","Oldersions","READMEOld.mlx"),"file")
            movefile("README.mlx", fullfile("Utilities","OldVersions","READMENew.mlx"))
            movefile(fullfile("Utilities","Oldersions","READMEOld.mlx"),fullfile(proj.RootFolder,"README.mlx"))
        end
    catch
        disp("Failed to move README.mlx.")
    end
    if isMATLABReleaseOlderThan("R2022b")
        disp(str + " so it may not run this example which was built in R2022b.")
    elseif isMATLABReleaseOlderThan("R2023a")
        addpath(fullfile(myPath,"Models22b"))
    else
        % Fix path to run R2023a files
        addpath(fullfile(myPath,"Models23a"))
    end
else
    % Fix path to run R2023a files, for now?
    disp(str + " and this was designed using R2022b.")
    disp("If you find errors, please report them to onlineteaching@mathworks.com")
    addpath(fullfile(myPath,"Models23a"))
end
StartUpFcn
end
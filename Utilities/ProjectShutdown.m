function ProjectShutdown
% Open the overview file

% Set up check for version number
proj = currentProject;
myPath = fullfile(proj.RootFolder,"Models");
if isMATLABReleaseOlderThan("R2023b")
    cd(proj.RootFolder)
    try
        if exist(fullfile("Utilities","OldVersions","MainMenuNew.mlx"),"file")
            movefile("MainMenu.mlx", fullfile("Utilities","OldVersions","MainMenuOld.mlx"))
            movefile(fullfile("Utilities","OldVersions","MainMenuNew.mlx"),fullfile(proj.RootFolder,"MainMenu.mlx"))
        end
    catch 
        disp("Failed to move MainMenu.mlx.")
    end
    try
        if exist(fullfile("Utilities","Oldersions","READMENew.mlx"),"file")
            movefile("README.mlx", fullfile("Utilities","OldVersions","READMEOld.mlx"))
            movefile(fullfile("Utilities","Oldersions","READMENew.mlx"),fullfile(proj.RootFolder,"README.mlx"))
        end
    catch
        disp("Failed to move README.mlx.")
    end
    if isMATLABReleaseOlderThan("R2022b")
        % Nothing to change
    elseif isMATLABReleaseOlderThan("R2023a")
        rmpath(fullfile(myPath,"Models22b"))
    else
        rmpath(fullfile(myPath,"Models23a"))
    end
else
    rmpath(fullfile(myPath,"Models23a"))
end
end
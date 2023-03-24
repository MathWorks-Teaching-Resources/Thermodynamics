function Startup
% Open the overview file

% Set up check for version number
releaseInfo = matlabRelease;
str = "This is release " + releaseInfo.Release + ",";
proj = currentProject;
myPath = proj.RootFolder;
if isMATLABReleaseOlderThan("R2022b")
    disp(str + " so it may not run this example which was built in R2022b.")
elseif isMATLABReleaseOlderThan("R2023a")
    addpath(myPath+filesep+"Models22b")
elseif isMATLABReleaseOlderThan("R2023b")
    % Fix path to run R2023a files
    addpath(myPath+filesep+"Models23a")
else
    % Fix path to run R2023a files, for now?
    disp(str + " and this was designed using R2022b.")
    disp("If you find errors, please report them to onlineteaching@mathworks.com")
end

% Check if the file is running in MATLAB Online
% If it is, run Navigation.mlx, if not, use the Overview.html version
% locDir = pwd;
% if length(locDir)>13 && all(locDir(1:14) == '/MATLAB Drive/')
%     open("Navigation.mlx")
% else
%     open("Overview.html")
% end
% 
% end
open("SplashPage.mlx")
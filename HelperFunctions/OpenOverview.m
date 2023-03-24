function OpenOverview

curFile = matlab.desktop.editor.getActive;
% Open the overview file
% locDir = pwd;
% if length(locDir)>13 && locDir(1:14) == '/MATLAB Drive/' 
%     open("Navigation.mlx")
% else
%     open("Overview.html")
% end
% end
open("Navigation.mlx")
navFile = matlab.desktop.editor.getActive;
if string(curFile.Filename) ~= string(navFile.Filename)
    close(curFile)
end
end

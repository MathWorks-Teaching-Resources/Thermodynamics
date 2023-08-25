function OpenREADME

try 
    currentProject;
catch
    openProject;
end
curFile = matlab.desktop.editor.getActive;
open("README.mlx")
navFile = matlab.desktop.editor.getActive;
if string(curFile.Filename) ~= string(navFile.Filename)
    close(curFile)
end
end
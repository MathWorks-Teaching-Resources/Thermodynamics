function OpenREADME

try 
    proj = currentProject;

curFile = matlab.desktop.editor.getActive;
if isMATLABReleaseOlderThan("R2023b")
    open("README2.mlx")
else
    open("README.mlx")
end
navFile = matlab.desktop.editor.getActive;
if string(curFile.Filename) ~= string(navFile.Filename)
    close(curFile)
end
end
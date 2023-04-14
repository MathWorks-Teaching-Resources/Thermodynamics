function buildModule(releaseType)

    % Copyright 2022 The MathWorks, Inc.
    arguments
        releaseType {mustBeTextScalar,mustBeMember(releaseType,["build","major","minor","patch"])} = "build"
    end

    if isMATLABReleaseOlderThan("R2022a")
        error("thermodynamics:releaseFromLatest","This module only works on R2022b or later.")
    end
    
    prj = currentProject;
    rootDir = prj.RootFolder;

    % Check for code issues
    codecheckModule(rootDir);
    disp("code check complete.");

    % Run unit tests and capture code coverage
    testToolbox()
    % Update Badges for GitHub.com
    badgesforModule(rootDir)
    disp("test complete");

end

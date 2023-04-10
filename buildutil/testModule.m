function testModule(options)
    %RUNTESTWITHCODECOVERAGE Summary of this function goes here
    %   Detailed explanation goes here
    
    arguments
        options.RunSmokeTests logical = true;
        options.RunFunctionTests logical = true
        options.ModuleName (1,1) string = "";
        options.ReportSubdirectory (1,1) string = "";
    end
    
    import matlab.unittest.TestSuite;
    import matlab.unittest.TestRunner;
    import matlab.unittest.Verbosity;
    % import matlab.unittest.plugins.XMLPlugin;
    % import matlab.unittest.selectors.HasTag;
    
    oldpath  = addpath("tests",genpath(extractBefore(pwd,"buildutil")));
    finalize = onCleanup(@()(path(oldpath)));
    openProject(options.ModuleName);

    outputDirectory = fullfile("report",options.ReportSubdirectory);
    if isempty(dir(outputDirectory))
        mkdir(outputDirectory)
    end
    
    smokeSuite = TestSuite.fromClass(?smokeTests);
    functionSuite = TestSuite.fromClass(?functionTests);

    runner = TestRunner.withTextOutput('OutputDetail', Verbosity.Detailed);
    
    % runner.addPlugin(XMLPlugin.producingJUnitFormat(fullfile(outputDirectory,'test-results.xml')));
    
    if options.RunSmokeTests
        smokeResults = runner.run(smokeSuite);
        if ~verLessThan('matlab','9.9') && ~isMATLABReleaseOlderThan("R2022a")
            % This report is only available in R2022a and later.  
            % isMATLABReleaseOlderThan wasn't added until MATLAB 2020b / version 9.9
            smokeResults.generateHTMLReport(outputDirectory,'MainFile',"testreport.html");
        end
            disp(table(smokeResults))
    end
    if options.RunFunctionTests
        functionResults = runner.run(functionSuite);
        disp(table(functionResults))
    end
    
    if options.RunSmokeTests
        smokeResults.assertSuccess()
    end
    if options.RunFunctionTests
        functionResults.assertSuccess()
    end
end

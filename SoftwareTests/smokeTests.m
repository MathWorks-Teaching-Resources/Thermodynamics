% Run these tests with runMyTests
classdef smokeTests < matlab.unittest.TestCase
    
    properties
        fc
        origProj
    end

     methods (TestClassSetup)
        function setUpPath(testCase)
            testCase.origProj = matlab.project.rootProject;

            testCase.fc = fullfile(pwd);
            if ~isempty(extractBefore(testCase.fc,"tests"))
                rootDirName = extractBefore(testCase.fc,"tests");
            else
                rootDirName = testCase.origProj.RootFolder;
            end
            %rootDirName = testCase.origProj.RootFolder;
            openProject(rootDirName);
           
            testCase.log("Running in " + version)

            % if isMATLABReleaseOlderThan("R2023a")
            %     addpath(string(rootDirName)+filesep+"Models22b")
            % else
            %     addpath(string(rootDirName)+filesep+"Models23a")
            % end
        end % function setUpPath
    end % methods (TestClassSetup)

    methods(Test)

        function runCalculateWork(testCase)
            % this function runs all the code in CalculateWork.mlx
            % it also logs the final figure in the resulting output
            % document while closing the figure window on teardown
            import matlab.unittest.diagnostics.FigureDiagnostic;
            testCase.log("Running CalculateWork.mlx")
            fig = figure;
            testCase.addTeardown(@close,fig)
            CalculateWork
            testCase.log(3,FigureDiagnostic(fig))
        end

        function runCreatePVplots(testCase)
            % this is the simplest possible logged version of a smoke test
            % that will run a file called "CreatePVplots.mlx"
            testCase.log("Running CreatePVplots.mlx")
            CreatePVplots
        end

        function runFirstLaw(testCase)
            % this is the simplest possible logged version of a smoke test
            % that will run a file called "FirstLaw.mlx"
            testCase.log("Running FirstLaw.mlx")
            FirstLaw
        end

        function runSecondLaw(testCase)
            % this is the simplest possible logged version of a smoke test
            % that will run a file called "SecondLaw.mlx"
            testCase.log("Running SecondLaw.mlx")
            SecondLaw
        end

        function runStatePlots(testCase)
            testCase.log("Running StatePlots.mlx")
            StatePlots
        end

        % function runModelFridge(testCase)
        %     testCase.log("Running Model_Fridge.mlx")
        %     try 
        %         Model_Fridge
        %     catch ME
        %         if string(ME.message) == "Unrecognized function or variable 'tData'."
        %             testCase.log("Running the simulation of the Evaporator...")
        %             out = sim(mdl);
        %             tData = out.simlog_EvaporatorHarness.Evaporator.z_mix.series.time;
        %         elseif string(ME.message) == "Error compiling Simscape network for model ModelFridge."
        %             testCase.log("Expected error triggered for closed model with water as fluid.")
        %         elseif contains(string(ME.message),"['ModelFridge/Solver Configuration']: At time 0.8")
        %             testCase.log("Expected error triggered for closed model with R-1234yf")
        %             warning("Did you expect R-1234yf in the Fluid Choice block for ModelFridge?")
        %         elseif string(ME.message) == "Multiple compilation errors detected while compiling ModelFridge_WithQuality."
        %             testCase.log("Error in ModelFridge_WithQuality.")
        %             warning("Error in ModelFridge_WithQuality... trying again!")
        %             simout = sim(Simulink.SimulationInput(fullmdl));
        %         else
        %             warning("Unexpected error")
        %             rethrow(ME)
        %         end
        %     end
        % end

        function runBuildFridge(testCase)
            testCase.log("Running BuildRefrigerator.mlx")
            if isMATLABReleaseOlderThan("R2023a")
                  try
                     BuildRefrigerator
                  catch ME
                      if contains(string(ME.message),"['step6_ClosedLoopHarness/Solver Configuration']: At time 0.8")
                          testCase.log("Expected error thrown on step6_ClosedLoopHarness")
                      elseif ME.identifier == "cefclient:webwindow:MissingDisplay"
                          disp("Expected error related to lack of display in testing machine.")
                      else
                          warning("Unexpected error")
                          rethrow(ME)
                      end
                  end
            else%if isMATLABReleaseOlderThan("R2023b")
                try
                    BuildRefrigerator
                catch ME
                    if contains(string(ME.message),"['step6_ClosedLoopHarness/Solver Configuration']: At time 0.8")
                        testCase.log("Expected error thrown on step6_ClosedLoopHarness")
                    elseif ME.identifier == "cefclient:webwindow:MissingDisplay"
                        disp("Expected error related to lack of display in testing machine.")
                    else
                        warning("Unexpected error in BuilRefrigerator test")
                        rethrow(ME)
                    end
                end
            % else
            %     testCase.log("Expected failure, incorrect version.")
            end
        end

    end % methods (Test)

    methods (TestClassTeardown)
        function resetPath(testCase)

            if isempty(testCase.origProj)
                close(currentProject);
            else
                openProject(testCase.origProj.RootFolder);
            end
            close all force

%             if isMATLABReleaseOlderThan("R2023a")
%                 rmpath(string(rootDirName)+filesep+"Models22b")
%             else
%                 rmpath(string(rootDirName)+filesep+"Models23a")
%             end
% 
%             cd(testCase.fc)
        end

    end % methods (TestClassTeardown)

end
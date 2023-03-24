% Run these tests with runMyTests
%
% Alternately, run these tests with
% results = runtests(tests)
% table(results)
classdef functionTests < matlab.unittest.TestCase

    methods(Test)
        function checkGetBoundsSingle(testCase)
            % Tests that the expected bounds are generated
            % with a single input
            % Note that the expected results are hard-coded into the test
            testInput = rand(1)*(randi(100,1)-50);
            expected = [testInput-1 testInput+1];
            actual = getBounds(testInput);
            verifyTrue(testCase,all(actual==expected))
        end

        function checkGetBoundsVector(testCase)
            % Tests that the expected bounds are generated
            % with a vector input
            % Note that the expected results are hard-coded into the test
            testInput = [rand([1,15]) 0 1]*(randi(100,1)-50);
            defaultScale = 0.125;
            minMaxVals = [min(testInput) max(testInput)];
            expected = [min(testInput) max(testInput)] + [-1 1]*diff(minMaxVals)*defaultScale;
            actual = getBounds(testInput);
            verifyTrue(testCase,all(actual==expected))
        end

        function checkGetBoundsVectorTwoArg(testCase)
            % Tests that the expected bounds are generated
            % with a vector input
            % Note that the expected results are hard-coded into the test
            testInput = [rand([1,15]) 0 1]*(randi(100,1)-50);
            testScale = rand(1);
            minMaxVals = [min(testInput) max(testInput)];
            expected = [min(testInput) max(testInput)] + [-1 1]*diff(minMaxVals)*testScale;
            actual = getBounds(testInput,testScale);
            verifyTrue(testCase,all(actual==expected))
        end

    end % methods

end % classdef
classdef StartUpFcn < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure        matlab.ui.Figure
        TabGroup        matlab.ui.container.TabGroup
        WelcomeTab      matlab.ui.container.Tab
        Image           matlab.ui.control.Image
        READMEButton    matlab.ui.control.Button
        ReviewUsButton  matlab.ui.control.Button
        MainMenuButton  matlab.ui.control.Button
        WelcomeTitle    matlab.ui.control.Label
        TabReview       matlab.ui.container.Tab
        OtherButton     matlab.ui.control.Button
        StudentButton   matlab.ui.control.Button
        FacultyButton   matlab.ui.control.Button
        Q1              matlab.ui.control.Label
        ReviewTitle     matlab.ui.control.Label
        ReviewText      matlab.ui.control.Label
    end

%% How to customize the app?    
%{
    
    This StartUp app is designed to be customized to your module. It
    requires a minimum number of customization:
    
    1. Change "Module Template" in app.WelcomeTitle by your module name
    2. Change "Module Template" in app.ReviewTitle by your module name
    3. Change image in app.Image by the cover image you would like for your
       module. This image should be located in rootFolder/Images
    4. Create your MS Form:
        a. Make a copy of the Faculty and the Student survey
        b. Customize the name of the survey to match the name of your
           survey
        c. Click on "Collect responses", select "Anyone can respond" and
        copy the form link to the app private property below.
    5. Create your MS Sway:
        a. Go to MS Sway
        b. Create a blank sway
        c. Add the name of your module to the title box
        d. Click "Share", Select "Anyone with a link", Select "View"
        e. Copy the sway link into the app private properties below.

%}

    properties (Access = private)

        % Links to be completed before to release:
        SwayLink = "https://sway.office.com/Q9rUZEGrTyr6EVOB?ref=Link&loc=mysways";
        StudentFormLink = "https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5mlcO9AKxC5AgMAKBg6OKuBUOEo4WENGRVE1TVRXSzRTNDlXMDJSNjFHTC4u";
        FacultyFormLink = "https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5uTTy0Nzo3hCsqA_uQZCxy5URUNVRFZDNlBPMEZNNUtCWk4zRFc3WE1KMy4u";
          
    end
    
    methods (Access = private)
        
        function pingSway(app)
            try
                if ~ispref("MCCTEAM")
                    webread(app.SwayLink);
                end
            catch
            end
        end
        
        function openStudentForm(app)
            try
                web(app.StudentFormLink);
            catch
            end
        end

        function openFacultyForm(app)
            try
                web(app.FacultyFormLink);
            catch
            end
        end
    end

    methods (Access = private, Static)

        function saveSettings(isReviewed,numLoad)
            try
                save(fullfile("Utilities","ProjectSettings.mat"),"isReviewed","numLoad");
            catch
            end
        end

    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            
            % Move gui to center of screen
            movegui(app.UIFigure,"center")

            % Switch tab to review if has not been reviewed yet
            if isfile(fullfile("Utilities","ProjectSettings.mat"))
                load(fullfile("Utilities","ProjectSettings.mat"),"numLoad","isReviewed");
                numLoad = numLoad + 1; % Increment counter
            else
                isReviewed = false;
                numLoad = 1; % Initialize counter
            end

            % Switch tab for review
            if ~isReviewed && numLoad > 2
                isReviewed = true;
                app.TabGroup.SelectedTab = app.TabReview;
            end

            % Save new settings
            app.saveSettings(isReviewed,numLoad)

        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            if event.Source == app.READMEButton
                open README.mlx
            else
                open MainMenu.mlx
            end
            delete(app)
        end

        % Button pushed function: MainMenuButton
        function MainMenuButtonPushed(app, event)
            UIFigureCloseRequest(app,event)
        end

        % Button pushed function: FacultyButton
        function FacultyButtonPushed(app, event)
            app.pingSway;
            app.openFacultyForm;
            UIFigureCloseRequest(app,event)
        end

        % Button pushed function: StudentButton
        function StudentButtonPushed(app, event)
            app.pingSway;
            app.openStudentForm;
            UIFigureCloseRequest(app,event)
        end

        % Button pushed function: OtherButton
        function OtherButtonPushed(app, event)
            app.pingSway;
            app.openStudentForm;
            UIFigureCloseRequest(app,event)
        end

        % Button pushed function: ReviewUsButton
        function ReviewUsButtonPushed(app)
            app.TabGroup.SelectedTab = app.TabReview;
        end

        % Button pushed function: READMEButton
        function READMEButtonPushed(app, event)
            UIFigureCloseRequest(app,event)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.AutoResizeChildren = 'off';
            app.UIFigure.Position = [100 100 276 430];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.Resize = 'off';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.AutoResizeChildren = 'off';
            app.TabGroup.Position = [1 1 276 460];

            % Create WelcomeTab
            app.WelcomeTab = uitab(app.TabGroup);
            app.WelcomeTab.AutoResizeChildren = 'off';
            app.WelcomeTab.Title = 'Tab';

            % Create WelcomeTitle
            app.WelcomeTitle = uilabel(app.WelcomeTab);
            app.WelcomeTitle.HorizontalAlignment = 'center';
            app.WelcomeTitle.VerticalAlignment = 'top';
            app.WelcomeTitle.WordWrap = 'on';
            app.WelcomeTitle.FontSize = 24;
            app.WelcomeTitle.FontWeight = 'bold';
            app.WelcomeTitle.Position = [2 360 274 59];
            app.WelcomeTitle.Text = 'Welcome to Thermodynamics';

            % Create MainMenuButton
            app.MainMenuButton = uibutton(app.WelcomeTab, 'push');
            app.MainMenuButton.ButtonPushedFcn = createCallbackFcn(app, @MainMenuButtonPushed, true);
            app.MainMenuButton.FontSize = 18;
            app.MainMenuButton.Position = [59 96 161 35];
            app.MainMenuButton.Text = 'Main Menu';

            % Create ReviewUsButton
            app.ReviewUsButton = uibutton(app.WelcomeTab, 'push');
            app.ReviewUsButton.ButtonPushedFcn = createCallbackFcn(app, @ReviewUsButtonPushed, true);
            app.ReviewUsButton.FontSize = 18;
            app.ReviewUsButton.Position = [59 10 161 35];
            app.ReviewUsButton.Text = 'Review Us';

            % Create READMEButton
            app.READMEButton = uibutton(app.WelcomeTab, 'push');
            app.READMEButton.ButtonPushedFcn = createCallbackFcn(app, @READMEButtonPushed, true);
            app.READMEButton.FontSize = 18;
            app.READMEButton.Position = [59 53 161 35];
            app.READMEButton.Text = 'README';

            % Create Image
            app.Image = uiimage(app.WelcomeTab);
            app.Image.Position = [16 141 245 209];
            app.Image.ImageSource = 'FridgeModel.png';

            % Create TabReview
            app.TabReview = uitab(app.TabGroup);
            app.TabReview.AutoResizeChildren = 'off';
            app.TabReview.Title = 'Tab2';
            app.TabReview.HandleVisibility = 'off';

            % Create ReviewText
            app.ReviewText = uilabel(app.TabReview);
            app.ReviewText.HorizontalAlignment = 'center';
            app.ReviewText.VerticalAlignment = 'top';
            app.ReviewText.WordWrap = 'on';
            app.ReviewText.FontSize = 18;
            app.ReviewText.Position = [16 243 245 69];
            app.ReviewText.Text = 'Plese help us improve your experience by answering a few questions.';

            % Create ReviewTitle
            app.ReviewTitle = uilabel(app.TabReview);
            app.ReviewTitle.HorizontalAlignment = 'center';
            app.ReviewTitle.VerticalAlignment = 'top';
            app.ReviewTitle.WordWrap = 'on';
            app.ReviewTitle.FontSize = 24;
            app.ReviewTitle.FontWeight = 'bold';
            app.ReviewTitle.Position = [2 326 274 93];
            app.ReviewTitle.Text = 'Welcome to Thermodyanmics';

            % Create Q1
            app.Q1 = uilabel(app.TabReview);
            app.Q1.HorizontalAlignment = 'center';
            app.Q1.VerticalAlignment = 'top';
            app.Q1.WordWrap = 'on';
            app.Q1.FontSize = 18;
            app.Q1.FontWeight = 'bold';
            app.Q1.Position = [16 141 245 69];
            app.Q1.Text = 'What describe you best?';

            % Create FacultyButton
            app.FacultyButton = uibutton(app.TabReview, 'push');
            app.FacultyButton.ButtonPushedFcn = createCallbackFcn(app, @FacultyButtonPushed, true);
            app.FacultyButton.FontSize = 18;
            app.FacultyButton.Position = [64 127 150 40];
            app.FacultyButton.Text = 'Faculty';

            % Create StudentButton
            app.StudentButton = uibutton(app.TabReview, 'push');
            app.StudentButton.ButtonPushedFcn = createCallbackFcn(app, @StudentButtonPushed, true);
            app.StudentButton.FontSize = 18;
            app.StudentButton.Position = [64 80 150 40];
            app.StudentButton.Text = 'Student';

            % Create OtherButton
            app.OtherButton = uibutton(app.TabReview, 'push');
            app.OtherButton.ButtonPushedFcn = createCallbackFcn(app, @OtherButtonPushed, true);
            app.OtherButton.FontSize = 18;
            app.OtherButton.Position = [64 34 150 40];
            app.OtherButton.Text = 'Other';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = StartUpFcn

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
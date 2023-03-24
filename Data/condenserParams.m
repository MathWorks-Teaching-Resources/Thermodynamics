
% Refrigerant ports
d_cond = 0.75;               % [cm]
a_cond = pi/4*d_cond^2;      % [cm^2]

air_frac = [0.75 0.25];

% Air side
w_cond = 60;                      % [cm]
h_cond_pass = 40*air_frac;        % [cm]
h_cond = sum(h_cond_pass);        % [cm]
a_x_cond = w_cond*h_cond_pass;    % [cm^2]


% Tube counts
N_row = 40*air_frac;             % [1]
N_tube_row = 8;                  % [1]
N_tube_pass = N_tube_row*N_row;  % [1]
N_tube = sum(N_tube_pass);  % [1]

% Tube shape is rectangular 
w_tube = 2;                   % [mm] 
h_tube = 1;                   % [mm]
a_tube = w_tube*h_tube;       % [mm^2]
p_tube = 2*(w_tube+h_tube);   % [mm]
t_tube = 0.5;                 % [mm]
l_tube = w_cond - 4;          % [cm] 

% Fin area
N_pass = sum(N_row);                                    % [1]  
l_fin = 0.1*((w_tube+t_tube)*N_tube_row + t_tube);      % [cm]
w_fin = (h_cond-0.1*N_pass*(h_tube+2*t_tube))/N_pass;   % [cm]      
a_fin = l_fin*w_fin;                                    % [cm^2]
N_fin_cm = 5;                                           % [1]
a_fins_tot = N_fin_cm*l_tube*N_pass*a_fin/(100^2);      % [m^2]
a_fins = a_fins_tot*air_frac;                           % [m^2]

% Manifolds have rectangular cross-sections
a_man = 5;                                             % [cm^2]
d_man = 2*2*2.5/(2+2.5);                               % [cm]
% 3 manifold lengths
l_man(1) = h_cond*air_frac(1);   % [cm] Entrance
l_man(2) = h_cond;               % [cm] Turn-around
l_man(3) = h_cond*air_frac(2);   % [cm] Exit

% MA side aggregate parameters
a_maflow = air_frac*N_pass...
            *(l_tube-N_fin_cm*l_tube*t_tube/10)*(w_fin-0.1);  % [cm^2]
a_x_httubes = (l_fin + 2*(w_tube+2*t_tube)/10)*l_tube*N_row;  % [cm^2]
v_ma = a_maflow*l_fin;                                        % [cm^3]

% Offset strip-fin correlation
REPRabc = [0.12, 1, 0.4];                          % [1]

% Flow conditions (2 pass) air 
mdot_air_cond = 0.2*air_frac;     % [kg/s]
T_air_cond = 40;                   % [degC]

% Refrigerant flow rate and ICs
mdot_cond = 0.0104;                % [kg/s]
p0_cond = 1464.7;                  % [kPa]
h0_cond = 425;                     % [kJ/kg]

%%%% SIDE CALCS %%%%
% vdot = 20-80 cfm; --> 30 m^3 hr  (computer) 
%  600-1100  m^3/hr (car)
% Range is 30-1100 m^3/hr
% rho is between 1.2 kg/m^3 at 20 degC to 1.12kg/m^3 at 40 degC

% rho_air20 = simscape.Value(1.2, 'kg/m^3');
% rho_air40 = simscape.Value(1.127, 'kg/m^3');
% vdot_air_vec = simscape.Value([30:100:1100], 'm^3/hr');
% 
% mdot_air_vec = rho_air40*vdot_air_vec;
% 
% value(mdot_air_vec, 'kg/s')
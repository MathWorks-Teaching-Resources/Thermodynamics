% Compressor parameters

% Inlet/outlet port sizes
d_evap = 1;                  % [cm]
a_evap = pi/4*d_evap^2;      % [cm^2]
d_cond = 0.75;               % [cm]
a_cond = pi/4*d_cond^2;      % [cm^2]

% Compressor parameters
mdot_comp = 0.0104;       % [kg/s]
N_comp = 3600;           % [rpm]
p_nom_in = 221;          % [kPa]
T_nom_in = 278.15;       % [K]
eta_v = 0.95;            % [1]
pr_nom = 6;              % [1]
gamma1234yf = 1.14;      % [1]
eta_m = 0.9;             % [1]


% Inlet/outlet pressure boundary conditions and initial speed
p1_comp = 221.78;        % [kPa]
p2_comp = 1464.7;        % [kPa]
h1_comp = 361;           % [kJ/kg]
h2_comp = 425;           % [kJ/kg]   % Don't care variable, was 450
N_0 = 3600;              % [rpm]
 
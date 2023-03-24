% Expansion Valve Parameters
valve_max_open = 5;       % [mm]
valve_nom_flow = 0.02;    % [kg/s]
valve_nom_dp = 1242;      % [kPa]
valve_inlet_T = 320;      % [K]

% Refrigerant ports
d_cond = 0.75;            % [cm]
a_cond = pi/4*d_cond^2;   % [cm^2]
d_evap = 1;               % [cm]
a_evap = pi/4*d_evap^2;   % [cm^2]

% Inlet pressure and subcool temp
p0_valve = 1464.7;        % [kPa]
h0_valve = 265.17;        % [kJ/kg]


% Outlet pressure and enthalpy
p1_valve = 221.78;        % [kPa]
h1_valve = 265.17;        % [kJ/kg] 
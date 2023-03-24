% Initialization script for the evaporator/cold plate test harness model.

% Cold plate parameters aluminum
rho_plate = 2.7;      % [g/cm^3]  
m_plate = 10;         % [kg]
k_plate = 237;        % [W/m/K]
cp_plate = 910;       % [J/kg/K]

% Plate bore hole spec 10 holes 1 cm diameter each parallel flow
l_plate = 50;                                % [cm]
w_plate = 31;                                % [cm]
t_plate = 2.4;                               % [cm]
a_plate = 2*l_plate*w_plate + ...
          2*l_plate*t_plate + ...
          2*w_plate*t_plate;                 % [cm^2]


l_evap = 5;                                  % [m]
d_evap = 1;                                  % [cm]
a_evap = pi/4*d_evap^2;                      % [cm^2]
a_tube = l_evap*pi*d_evap/100;               % [m^2]

t_cond_plate = (t_plate-d_evap)/2;           % [cm]
t_wall = 1;                                  % [mm]

% Initial and boundary conditions 
p0_evap = 221.78;       % [kPa]
h0_evap = 265.17;       % [kJ/kg]
mdot_evap = 0.0104;     % [kg/s]
heat_load = 1;          % [kW]

% Thermal mass temp
T_air = 40;                 % [degC]
T0 = T_air+ 273.15;         % [K]
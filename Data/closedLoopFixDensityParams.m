% First closed loop model parameter set
evaporatorParams;
compressorParams;
condenserParams;
valveParams;

% New initial pressure at T0 = 40 degC
p0 = 1018.4;     % [kPa]

% Liquid and vapor densities at 40 degC
rho_l = 1034;    % [kg/m^3]
rho_v = 57.75;   % [kg/m^3]

% Target density
rho_ref = 200;   % [kg/m^3]

% Set up and solve for x0 for the target density
fun = @(x)rho_ref-1/(x/rho_v + (1-x)/rho_l);
x0 = fzero(fun, 0.5);

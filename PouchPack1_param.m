%% Battery parameters

%% ModuleType1
ModuleType1.SOC_vecCell = [0, .1, .25, .5, .75, .9, 1]; % Vector of state-of-charge values, SOC
ModuleType1.T_vecCell = [278, 293, 313]; % Vector of temperatures, T, K
ModuleType1.V0_matCell = [3.49, 3.5, 3.51; 3.55, 3.57, 3.56; 3.62, 3.63, 3.64; 3.71, 3.71, 3.72; 3.91, 3.93, 3.94; 4.07, 4.08, 4.08; 4.19, 4.19, 4.19]; % Open-circuit voltage, V0(SOC,T), V
ModuleType1.V_rangeCell = [0, inf]; % Terminal voltage operating range [Min Max], V
ModuleType1.R0_matCell = [.0117, .0085, .009; .011, .0085, .009; .0114, .0087, .0092; .0107, .0082, .0088; .0107, .0083, .0091; .0113, .0085, .0089; .0116, .0085, .0089]; % Terminal resistance, R0(SOC,T), Ohm
ModuleType1.AHCell = 27; % Cell capacity, AH, A*hr
ModuleType1.R1_matCell = [.0109, .0029, .0013; .0069, .0024, .0012; .0047, .0026, .0013; .0034, .0016, .001; .0033, .0023, .0014; .0033, .0018, .0011; .0028, .0017, .0011]; % First polarization resistance, R1(SOC,T), Ohm
ModuleType1.tau1_matCell = [20, 36, 39; 31, 45, 39; 109, 105, 61; 36, 29, 26; 59, 77, 67; 40, 33, 29; 25, 39, 33]; % First time constant, tau1(SOC,T), s
ModuleType1.R2_matCell = [.0109, .0029, .0013; .0069, .0024, .0012; .0047, .0026, .0013; .0034, .0016, .001; .0033, .0023, .0014; .0033, .0018, .0011; .0028, .0017, .0011]; % Second polarization resistance, R2(SOC,T), Ohm
ModuleType1.tau2_matCell = [20, 36, 39; 31, 45, 39; 109, 105, 61; 36, 29, 26; 59, 77, 67; 40, 33, 29; 25, 39, 33]; % Second time constant, tau2(SOC,T), s
ModuleType1.R3_matCell = [.0109, .0029, .0013; .0069, .0024, .0012; .0047, .0026, .0013; .0034, .0016, .001; .0033, .0023, .0014; .0033, .0018, .0011; .0028, .0017, .0011]; % Third polarization resistance, R3(SOC,T), Ohm
ModuleType1.tau3_matCell = [20, 36, 39; 31, 45, 39; 109, 105, 61; 36, 29, 26; 59, 77, 67; 40, 33, 29; 25, 39, 33]; % Third time constant, tau3(SOC,T), s
ModuleType1.thermal_massCell = 100; % Thermal mass, J/K
ModuleType1.CellBalancingClosedResistance = 0.01; % Cell balancing switch closed resistance, Ohm
ModuleType1.CellBalancingOpenConductance = 1e-8; % Cell balancing switch open conductance, 1/Ohm
ModuleType1.CellBalancingThreshold = 0.5; % Cell balancing switch operation threshold
ModuleType1.CellBalancingResistance = 50; % Cell balancing shunt resistance, Ohm

%% ParallelAssemblyType1
ParallelAssemblyType1.SOC_vecCell = [0, .1, .25, .5, .75, .9, 1]; % Vector of state-of-charge values, SOC
ParallelAssemblyType1.T_vecCell = [278, 293, 313]; % Vector of temperatures, T, K
ParallelAssemblyType1.V0_matCell = [3.49, 3.5, 3.51; 3.55, 3.57, 3.56; 3.62, 3.63, 3.64; 3.71, 3.71, 3.72; 3.91, 3.93, 3.94; 4.07, 4.08, 4.08; 4.19, 4.19, 4.19]; % Open-circuit voltage, V0(SOC,T), V
ParallelAssemblyType1.V_rangeCell = [0, inf]; % Terminal voltage operating range [Min Max], V
ParallelAssemblyType1.R0_matCell = [.0117, .0085, .009; .011, .0085, .009; .0114, .0087, .0092; .0107, .0082, .0088; .0107, .0083, .0091; .0113, .0085, .0089; .0116, .0085, .0089]; % Terminal resistance, R0(SOC,T), Ohm
ParallelAssemblyType1.AHCell = 27; % Cell capacity, AH, A*hr
ParallelAssemblyType1.R1_matCell = [.0109, .0029, .0013; .0069, .0024, .0012; .0047, .0026, .0013; .0034, .0016, .001; .0033, .0023, .0014; .0033, .0018, .0011; .0028, .0017, .0011]; % First polarization resistance, R1(SOC,T), Ohm
ParallelAssemblyType1.tau1_matCell = [20, 36, 39; 31, 45, 39; 109, 105, 61; 36, 29, 26; 59, 77, 67; 40, 33, 29; 25, 39, 33]; % First time constant, tau1(SOC,T), s
ParallelAssemblyType1.R2_matCell = [.0109, .0029, .0013; .0069, .0024, .0012; .0047, .0026, .0013; .0034, .0016, .001; .0033, .0023, .0014; .0033, .0018, .0011; .0028, .0017, .0011]; % Second polarization resistance, R2(SOC,T), Ohm
ParallelAssemblyType1.tau2_matCell = [20, 36, 39; 31, 45, 39; 109, 105, 61; 36, 29, 26; 59, 77, 67; 40, 33, 29; 25, 39, 33]; % Second time constant, tau2(SOC,T), s
ParallelAssemblyType1.R3_matCell = [.0109, .0029, .0013; .0069, .0024, .0012; .0047, .0026, .0013; .0034, .0016, .001; .0033, .0023, .0014; .0033, .0018, .0011; .0028, .0017, .0011]; % Third polarization resistance, R3(SOC,T), Ohm
ParallelAssemblyType1.tau3_matCell = [20, 36, 39; 31, 45, 39; 109, 105, 61; 36, 29, 26; 59, 77, 67; 40, 33, 29; 25, 39, 33]; % Third time constant, tau3(SOC,T), s
ParallelAssemblyType1.thermal_massCell = 100; % Thermal mass, J/K
ParallelAssemblyType1.CellBalancingClosedResistance = 0.01; % Cell balancing switch closed resistance, Ohm
ParallelAssemblyType1.CellBalancingOpenConductance = 1e-8; % Cell balancing switch open conductance, 1/Ohm
ParallelAssemblyType1.CellBalancingThreshold = 0.5; % Cell balancing switch operation threshold
ParallelAssemblyType1.CellBalancingResistance = 50; % Cell balancing shunt resistance, Ohm

%% Battery initial targets

%% ModuleAssembly1.Module1
ModuleAssembly1.Module1.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly1.Module1.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly1.Module1.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly1.Module1.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly1.Module1.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly1.Module1.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module1.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly1.Module2
ModuleAssembly1.Module2.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly1.Module2.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly1.Module2.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly1.Module2.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly1.Module2.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly1.Module2.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module2.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module1
ModuleAssembly2.Module1.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly2.Module1.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly2.Module1.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly2.Module1.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly2.Module1.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly2.Module1.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module1.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module2
ModuleAssembly2.Module2.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly2.Module2.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly2.Module2.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly2.Module2.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly2.Module2.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly2.Module2.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module2.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module1
ModuleAssembly3.Module1.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly3.Module1.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly3.Module1.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly3.Module1.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly3.Module1.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly3.Module1.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module1.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module2
ModuleAssembly3.Module2.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly3.Module2.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly3.Module2.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly3.Module2.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly3.Module2.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly3.Module2.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module2.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module1
ModuleAssembly4.Module1.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly4.Module1.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly4.Module1.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly4.Module1.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly4.Module1.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly4.Module1.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module1.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module2
ModuleAssembly4.Module2.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly4.Module2.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly4.Module2.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly4.Module2.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly4.Module2.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly4.Module2.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module2.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

%% ModuleAssembly5.Module1
ModuleAssembly5.Module1.iCell = repmat(0, 16, 1); % Cell current (positive in), A
ModuleAssembly5.Module1.vCell = repmat(0, 16, 1); % Cell terminal voltage, V
ModuleAssembly5.Module1.socCell = repmat(1, 16, 1); % Cell state of charge
ModuleAssembly5.Module1.numCyclesCell = repmat(0, 16, 1); % Cell discharge cycles
ModuleAssembly5.Module1.temperatureCell = repmat(298.15, 16, 1); % Cell temperature, K
ModuleAssembly5.Module1.vParallelAssembly = repmat(0, 16, 1); % Parallel Assembly Voltage, V
ModuleAssembly5.Module1.socParallelAssembly = repmat(1, 16, 1); % Parallel Assembly state of charge

% Suppress MATLAB editor message regarding readability of repmat
%#ok<*REPMAT>

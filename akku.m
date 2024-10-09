import simscape.battery.builder.*

batterycell = Cell();
cellgeometry = PouchGeometry(); % määtritetään kennon geometria

cellgeometry.Length = simscape.Value(0.11,"m");
cellgeometry.Height = simscape.Value(0.13,"m");
cellgeometry.TabWidth = simscape.Value(0.035,"m");
cellgeometry.TabHeight = simscape.Value(0.025,"m");
cellgeometry.Thickness = simscape.Value(0.0095,"m");
cellgeometry.TabLocation = "Standard";


batterycell.Geometry = cellgeometry; % asetetaan geometria kenno objektille

batterycell.CellModelOptions.BlockParameters.thermal_port = "model";
batterycell.CellModelOptions.BlockParameters.T_dependence = "yes";
batterycell.CellModelOptions.BlockParameters.prm_dyn = "rc3";

batterycell.Mass = simscape.Value(0.269,"kg");
disp(batterycell)  %näytä kennon ominaisuudet
% f = uifigure("Color", "white");                              %renderöi kennon
% cellchart = BatteryChart(Parent=f,Battery=batterycell);      %renderöi kennon
% title(cellchart,"Pouch Cell")                                %renderöi kennon


disp(batterycell.CellModelOptions.CellModelBlockPath); %näyttää kennon ominaisuuksia

batterycell.CellModelOptions.BlockParameters.thermal_port = "model"; %laitetaan lämmön simulointi päälle

disp(batterycell.CellModelOptions.BlockParameters);  %lisäasetuksia kennolle  Mahdollisesti simulointiin liittyviä


parallelassembly = ParallelAssembly(... % rinnakkain kokoonpanon konfigurrointi
    NumParallelCells=16, ...             %kuinka monta kennoa on rinnan
    Cell=batterycell, ...
    Topology="SingleStack", ...
    InterCellGap=simscape.Value(0.003,"m")); %kennojen väli rinnan

module = Module(...                     %moduulin konfigurointi
    ParallelAssembly=parallelassembly, ...
    NumSeriesAssemblies=9, ...          % kuinka monta rinnakain kokoonpanoa on sarjassa
    InterParallelAssemblyGap=simscape.Value(0.003,"m")); %kennojen väli sarjassa

% f = uifigure("Color","white");
% modulechart = BatteryChart(Parent=f,Battery=module);        %moduulin renderöinti
% title(modulechart,"Module Chart")

moduleassembly = ModuleAssembly(...  % moduuli kokoonpano sarjassa
    Module=repmat(module,1,2), ...   % kaksi peräkkäin
    InterModuleGap=simscape.Value(0.02,"m"));    % väli


% f = uifigure("Color","white");
% modulechart = BatteryChart(Parent=f,Battery=moduleassembly); %moduulikokoonpanon renderöinti
% title(modulechart,"Module Assembly Chart")


batterypack2 = Pack(...                                                         %akku paketti
    ModuleAssembly=repmat(moduleassembly,1,3), ...                              %neljä riviä
    InterModuleAssemblyGap=simscape.Value(0.02,"m"));                          %rivien väli

% f = uifigure("Color","white");
% packchart = BatteryChart(Parent=f,Battery=batterypack2);
% title(packchart,"Pack Chart")

batterypack2.BalancingStrategy = "Passive";                                     %Kennojen tasaus menetelmä

disp(batterypack2.CumulativeMass)


detailedPset = module;
detailedPset.ModelResolution = "Detailed";          %asetetaan simuloinnin tarkkuus

%module.ModelResolution = "Grouped";    % mahd nopeampi simulointi


% f = uifigure("Color","white");
% paralllelAssemblyChartDetailed = BatteryChart(Parent=f,Battery=detailedPset,SimulationStrategyVisible="on");


lumpedmodule = Module(...
    ParallelAssembly=parallelassembly, ...
    NumSeriesAssemblies=9, ... 
    InterParallelAssemblyGap=simscape.Value(0.008,"m"), ...
    ModelResolution="Detailed");



module.ModelResolution = "Detailed";
moduleassemblylumped = ModuleAssembly(...
    Module=repmat(module,1,1), ...
    InterModuleGap=simscape.Value(0.1,"m"));

packlumped = Pack(...
    ModuleAssembly=repmat(moduleassemblylumped,1,3), ...
    StackingAxis="X",...
    InterModuleAssemblyGap=simscape.Value(0.01,"m"));

packlumped.BalancingStrategy = "Passive"; 

f = uifigure("Color","white");
packlumpedchart = BatteryChart(Parent=f,Battery=packlumped,SimulationStrategyVisible="on");
title(packlumpedchart,"Pack Lumped Simulation Strategy Chart")


%buildBattery(packlumped,LibraryName="pouchPackScripted",MaskInitialTargets="VariableNames",MaskParameters="VariableNames");

%__________________________________________________ kommentoituna ei luo
%uutta pakettia

















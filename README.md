
In order to run the simulation you have to load the 7_data.mat file into the workspace. 
After that you need to run the PouchPack1_param.m
Then the simulation should run in testbench.slx



explanations of files and folders

+PouchPack1 and PouchPack1Lumpingadapters are folders that have the battelry simscape block information inside them

real data has real test data that can be used in the tests

slprj is a matlab made folders

variable data has prior optimisation runs in it 

7_data is a workspace snapshot of one optimisation and includes neccessary data for the simulation (also has data that isnt used)

akku.m is a script that creates the Battery pack simscape object and library (PouchPack1) and has its parameters in it it also creates all files and foldersnamed PouchPack1 

PouchPack1_lib.slx has the simscape object of the modules and parallel assemblies (not important)

PouchPack1.slx has the model of the whole pack (important)

testbench.slx is where the simulation is run.
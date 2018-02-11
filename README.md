#A Star Algorithm
This project is divided as follows:

- libs: In this folder there is basic libraries created to make easier the development of the project.

- src: In this folder lie the core codes, they form the basic logic behind the project.

-obj: This folder contains the objects used for the linker to create the executable main.

-share: Folder with .csv, .dat files create from the project. In this file we have to save the .csv file that we want to be read.

-include: Definitions handled by the programs.

-main.cpp: Main file that gather the project in one executable file.

-makefile: Makefile for easier development.

-compile.sh: g++ commands of the makefile rules done by hand.


The main executable accepts 6 parameters:

- First: The ID of the source.

- Second: The ID of the goal.

- Third: Accepts the following values 0 if we want the normal execution of the program that is check if exist the binary files otherwise reads the .csv file and execute AStar. If this option is set to 1, forces to read the .csv and overwriting the binaries. If this option is set to 2 will ask for latitude and longitud of the starting point and the goal. Then execute AStar.

- Forth: Name of the csv file.

- Fifth: Path to the share folder. In this folder will lie the binary files, the .csv file with the information and the result file with the nodes in case AStar finds a solution 

- Sixth: name of the file that will hold the solution, in case ASTAR finds one.
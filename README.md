# urdf-desc-2DOF-planar-robot-to-Serialink
Interpretation of a description of a 2 degrees of freedom from an URDF file into SerialLink RBT10

**Date** 2021 Q1  
**Author** Diego P  
Robotics Toolbox 10  
Matlab / Octave  


## Description
The project takes a two degrees of freedom planar robot described in an URDF file and is written into a sintaxis compatible with the Matlab function DH-Factor. A direct parsing is not a valid approach, because not every URDF description has a valid solution for SerialLink. URDF allows branches when defining the links of the robots and also can have turns in all the axis. Serialink is limited only to Z-turns and no branched links.

Definition of links is made with the DHFactor function.

## Original Robot

![planar robot plotted in URDF](https://github.com/patchdev/urdf-desc-2DOF-planar-robot-to-Serialink/blob/main/img/2dofurdf.png?raw=true)

## SerialLink Output
![planar robot plotted in SerialLink](https://github.com/patchdev/urdf-desc-2DOF-planar-robot-to-Serialink/blob/main/img/simpleplot.png?raw=true)

![DH parameters of planar robot](https://github.com/patchdev/urdf-desc-2DOF-planar-robot-to-Serialink/blob/main/img/tabledhexample.png?raw=true)

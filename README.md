# urdf-desc-2DOF-planar-robot-to-Serialink
Interpretation of a description of a 2 degrees of freedom from an URDF file into SerialLink RBT10

## Description
The project takes a two degrees of freedom planar robot described in an URDF file and is written into a sintaxis compatible with the Matlab function DH-Factor. A direct parsing is not a valid approach, because not every URDF description has a valid solution for SerialLink, because URDF allows branches when defining the links of the robots and also can have turns in all the axis. Serialink is limited only to Z-turns and no branched links.

Definition of links is made with the DHFactor function.

## Original Robot

## SerialLink Output

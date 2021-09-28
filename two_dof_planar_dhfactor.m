%------------------------------
%   NAME: Diego Pacheco Torres
%   INDEX: 9685
%   DATE: 2020-2021
%------------------------------


%****************************************
%   2 DOF PLANAR ROBOT
%****************************************
%   Solution based on DHfactor function
%****************************************
% Using RBT10

%Starts robotics toolbox if is not yet
%startup_rvc
clc;
clear all;


%------------------------------
% First Joint URDF description
%------------------------------
    % <joint name="joint1" type="continuous">
    %     <parent link="base_link"/>
    %     <child link="link1"/>
    %     <origin xyz="0 0 0" rpy="0 0 0" />
    %     <axis xyz="0 0 1" />
    %   </joint>
%------------------------------
% Type: continuos, freely rotation
% Rotations: Rz(q1), Ry(0), Rx(0)
% Translations: Tx(0), Ty(0), Tz(0)
% Matrix definition: A1 = transl(0, 0, 0)*eul2tr(0,0,q1);

  j1 = 'Rz(q1)';


%------------------------------
% Second Joint URDF description
%------------------------------
    % <joint name="joint2" type="continuous">
    %     <parent link="link1"/>
    %     <child link="link2"/>
    %     <origin xyz="1 0 0" rpy="0 0 0" />
    %     <axis xyz="0 0 1" />
    %   </joint>
%------------------------------
% Type: continuos, freely rotation
% Rotations: Rz(q2), Ry(0), Rx(0)
% Translations: Tx(1), Ty(0), Tz(0)
% Matrix definition: A2 = transl(1, 0, 0)*eul2tr(0,0,q2);

j2 = 'Tx(Lx2).Rz(q2)';
Lx2 = 1;


%------------------------------
% End effector
%------------------------------
j3 = 'Tx(Lx3)';
Lx3 = 1;


%------------------------------
% Robot definition by DHfactor
%------------------------------
%DHfactor accepts a string as a DH parameters
definition = strcat(j1,'.',j2,'.',j3);
dh = DHFactor(definition);
two_dof_robot = eval( dh.command('Planar Robot') );
two_dof_robot
%Can be defined for an specific position
%two_dof_robot.plot([0 0]);
two_dof_robot.teach();

close all
clear all
clc

% add ffmatlib to the search path to have access to the functions
addpath('~/matlab-freefem/ffmatlib')

% load the mesh
[p,b,t,nv,nbe,nt,labels] = ffreadmesh('circle.msh');

% load the finite element space 
vh = ffreaddata('circle_vh.txt')

%load the scalar data
u = ffreaddata('solution.txt');

% plot the mesh and the boundary 
[handles,varargout] = ffpdeplot(p,b,t,'Mesh','on','Boundary','on');

% plot the solution 
ffpdeplot(p,b,t,'VhSeq',vh,'XYData',u,'Zstyle','continuous');

% extra code from the example to make it look nicer
lighting gouraud; view([-47,24]); camlight('headlight');
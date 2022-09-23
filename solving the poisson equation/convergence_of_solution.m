close all
clear all
clc

% testing convergence of solution for poisson equation

% add ffmatlib to the search path to have access to the functions
addpath('~/matlab-freefem/ffmatlib')

u50 = ffreaddata('solution_50.txt');

u100 = ffreaddata('solution_100.txt');

u200 = ffreaddata('solution_200.txt');

u400 = ffreaddata('solution_400.txt');

% load the mesh
[p,b,t,nv50,nbe,nt,labels] = ffreadmesh('circle_50.msh');
[p,b,t,nv100,nbe,nt,labels] = ffreadmesh('circle_100.msh');
[p,b,t,nv200,nbe,nt,labels] = ffreadmesh('circle_200.msh');
[p,b,t,nv400,nbe,nt,labels] = ffreadmesh('circle_400.msh');

semilogx([nv50,nv100,nv200,nv400],[var(u50),var(u100),var(u200),var(u400)])
title('Convergence of solution')
xlabel('No. of nodes')
ylabel('Solution variance')


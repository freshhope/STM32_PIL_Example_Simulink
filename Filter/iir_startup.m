% IIR_STARTUP.M file for stm32F2xx models
%
% $ iir_startup.m 2009-05-14 dlange $

%here = fileparts(mfilename('fullpath'));
%STM32F4xx = fullfile(here,'CodeGeneration','STM32F4xx');

% path:
%addpath(fullfile(STM32F2xx,'blocks'),'-end')
%addpath(fullfile(STM32F2xx,'str9comStick'),'-end')
%addpath(fullfile(STM32F2xx,'IAR_Ewarm','Settings'),'-end')
	
% read in data from file testdata.txt as input to the model
fid = fopen('testdata.txt','rt');
testdata = cell2mat(textscan(fid, '%f\n','headerlines',3));
fclose(fid);

% parameter values for gain b0 and gain a1
a1 = 0.9;
b0 = 0.1;

% create time vector for input values
t = linspace(0,1,1001)';

% clear temporary variables
clear ans fid here STM32F4xx

% [EOF]: iir_startup.m

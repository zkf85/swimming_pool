%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Try plot
%
%   Kefen ZHU
%       08/16/2013
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
close all;
clear all;

a = randn(100,1);
b = a + randn(100,1)*.05;
plot(a,b,'.');
xlabel('thing A');
ylabel('thing B');
title('Awesome plot');

%%
opts.Format = 'eps';
opts.Width = 3;
previewfig(gcf,opts);

%%
exportfig(gcf, 'awesome_figure.eps', opts);


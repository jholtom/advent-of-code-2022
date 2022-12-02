clear all; close all; clc;
M = str2double(readlines('input.txt'));
idx = all(isnan(M),2);
idy = 1+cumsum(idx);
idz = 1:size(M,1);
C = accumarray(idy(~idx),idz(~idx),[],@(r){M(r,:)});
% Part 1
p1 = max(cellfun(@sum,C))
% Part 2
p2 = sum(maxk(cellfun(@sum,C),3))
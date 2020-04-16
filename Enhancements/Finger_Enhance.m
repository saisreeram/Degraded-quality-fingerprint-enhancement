% Project Title: Enhancement of Bad Quality Fingerprints
% The code below reconstructs most of the details from a bad quality
% fingerprint image

close all
clear all
clc

[filename, pathname] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.gif'}, 'Pick a Degraded Fingerprint Image File');
im = imread([pathname,filename]);
figure, imshow(im);title('Fingerprint Image');
if ndims(im) == 3
    im = rgb2gray(im);
end

[newim, binim, mask, reliability] =  testfin(im)
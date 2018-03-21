 

 function [] = Q2_1(data1, k)
 
%A MATLAB function for step 2(1). The function input is: data1.mat and k. 
 %The function will generate the histogram plot of the cluster sizes.
% USAGE: Q2_1('Data1.mat', 20) %
 load(data1)
a = SeqData(1:1000, :);
idx  = kmeans(a, k);
histogram(idx)
end

 

 function [] = kMeansHistogram(data1, k)
 
%A MATLAB function for step 2(1). The function input is: data1.mat and k. 
 %The function will generate the histogram plot of the cluster sizes.
% USAGE: kMeansHistogram('Data1.mat', 20) %
 load(data1)
a = SeqData(1:1000, :);
idx  = kmeans(a, k);
histogram(idx)
 end

 
function [accuracy] = kNearestNeighborsAccuracy(data2, k, flag)
%The function inputs are: data2.mat, k and flag where flag is either 1 or 0. 
%If flag is 1 you should use all the genes as features, if it?s 0 you should use top 1000 genes as features.
%   The function output is the classification accuracy.

% USAGE: kNearestNeighborsAccuracy('Data2.mat', 10, 1) %

load(data2);
if flag == 1
    Mdl = fitcknn(training_data, training_label, 'NumNeighbors', k );
    label = predict(Mdl, testing_data);
    accuracy = Accuracy(label, testing_label);
else
    if flag == 0
    Mdl = fitcknn(training_data(:, 1:1000), training_label, 'NumNeighbors', k );
    label = predict(Mdl, testing_data(:, 1:1000));
    accuracy = Accuracy(label, testing_label);
    else
        accuracy = -1
    end
    
end
    


end

function [accuracy] = Accuracy(label, basis)
%The function inputs are: data2.mat, k and flag where flag is either 1 or 0. 
%If flag is 1 you should use all the genes as features, if it?s 0 you should use top 1000 genes as features.
%   The function output is the classification accuracy.

% USAGE: knnClassifier('Data2.mat', 10, 1) %

[row,col] = size(basis);
 count = 0;
 for j = 1:row
     if basis(j, 1) == label(j, 1)
         count = count + 1;
     end
 end
 accuracy = count / row;
end


function [accuracy] = svmAccuracy(data2)
%   USAGE accuracy = svmAccuracy('Data2.mat')

load(data2)

SVMStruct = svmtrain(training_data,training_label);
group = svmclassify(SVMStruct,testing_data);
accuracy = Accuracy(group, testing_label);

end


function [accuracy] = Accuracy(label, basis)


[row,col] = size(basis);
 count = 0;
 for j = 1:row
     if basis(j, 1) == label(j, 1)
         count = count + 1;
     end
 end
 accuracy = count / row;
end

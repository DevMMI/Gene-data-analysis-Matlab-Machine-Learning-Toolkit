function [accuracy] = Q3_3(data2)
%   USAGE accuracy = Q3_3('Data2.mat')

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

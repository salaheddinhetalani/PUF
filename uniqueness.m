function [uniquenessValue] = uniqueness(responseSet) 
 
k = size(responseSet, 1);   %The number of PUFs 
n = size(responseSet, 2);   %The number of response bits 
 
total_HD=0; 
for i=1:k-1 
    for j=i+1:k 
        total_HD = total_HD + sum(abs(responseSet(i,:)- responseSet(j,:))); 
    end 
end 
 
uniquenessValue = (2*total_HD)/(n*k*(k-1))*100; 
end


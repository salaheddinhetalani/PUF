function [reliabilityValue] = reliability(responseSetA,responseSetB) 
  
% Size of responseSetA must match responseSetB 
if(size(responseSetA,1)~=size(responseSetB,1) || size(responseSetA,2)~=size(responseSetB,2)) 
    disp('Error: Sample size must be the same!!'); 
    return; 
else 
    n = size(responseSetA,2);         %Number of bits per response 
    k = size(responseSetA,1);       %Number of samples 
end 
  
%Compute HD for each row 
total_HD = 0; 
for i = 1:k 
    total_HD = total_HD + sum(abs(responseSetA(i,:)- responseSetB(i,:))); 
end 

HD_intra = (total_HD/((k)*n))*100; 
  
reliabilityValue = 100-HD_intra; 
end


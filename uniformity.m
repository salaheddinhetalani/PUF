function [uniformityValue] = uniformity(response)
%Convert character to integer 
if(response(1)>40) 
    response = response - 48; 
end 
 
uniformityValue = (sum(response)/length(response))*100; 
end


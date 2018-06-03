function [data] = collectResponses(fileName, rowNum) 
 
fileID = fopen(fileName);       %Open the file 
 
if(fileID<0) 
    disp('Error: No such file !'); 
    return; 
end 
 
dataRow = fgetl(fileID);       %Read one row from the .dat file 
 
n = length(dataRow);           %Calculate the length of each row 
 
data = zeros(rowNum, n);       %Pre allocating 
 
data(1,:) = dataRow;                      %Save the data 
 
for i = 2:rowNum 
    dataRow = fgetl(fileID); 
    data(i, :) = dataRow;
end 
 
data = data - 48; 
 
fclose(fileID);                    %Close the file 
end


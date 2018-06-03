r25C = collectResponses('res25C.dat', 30); 
r85C = collectResponses('res85C.dat', 30); 
rn40C = collectResponses('res-40C.dat', 30);

% Compute uniqueness for responses at -40C condition 
fprintf('Uniqueness -40C: \t%5.2f%%\n', uniqueness(rn40C)); 
% Compute uniqueness for responses at 25C condition 
fprintf('Uniqueness  25C: \t%5.2f%%\n', uniqueness(r25C)); 
% Compute uniqueness for responses at 85C condition 
fprintf('Uniqueness  85C: \t%5.2f%%\n\n', uniqueness(r85C));

% Read two files contain the responses collected at two different conditions.
fprintf('Reliability -40C & 25C: \t%5.2f%%\n', reliability(rn40C,r25C));
% Read two files contain the responses collected at two different conditions. 
fprintf('Reliability  25C & 85C: \t%5.2f%%\n\n', reliability(r25C,r85C));

% Compute the uniformity for 1st PUF at -40C condition. 
puf = rn40C(1,:);
fprintf('Uniformity 1st PUF -40C: \t%5.2f%%\n', uniformity(puf)); 
% Compute the uniformity for 2nd PUF at 25C condition. 
puf = r25C(2,:);
fprintf('Uniformity 2nd PUF 25C: \t%5.2f%%\n', uniformity(puf)); 
% Compute the uniformity for 3rd PUF at 85C condition. 
puf = r85C(3,:);
fprintf('Uniformity 3rd PUF 85C: \t%5.2f%%\n', uniformity(puf)); 
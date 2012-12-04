function [ Samples ] = mymvnrnd( Mean, Covar, NSamps )
%function [ Samples ] = mymvnrnd( Mean, Covar, NSamps )
%   Mean is Dim x 1
%   Covar is Dim x Dim
%   NSamps is the number of samples you want to generate

Dim     = size(Mean, 1);
ZeroVec = zeros(Dim, 1);
Samples = mvnrnd(ZeroVec, Covar, NSamps);
MeanOff = mean(Samples);
Samples = Samples - repmat(MeanOff, [NSamps, 1]);
Samples = Samples + repmat(Mean', [NSamps, 1]);

end


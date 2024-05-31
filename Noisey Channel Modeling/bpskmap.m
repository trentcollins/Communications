function [OutputVector] = bpskmap(InputVector)

for N=1:length(InputVector)
    if(InputVector(1,N) == 0)
        OutputVector(1,N) = -1;
    else
        OutputVector(1,N) = 1;
    end
end

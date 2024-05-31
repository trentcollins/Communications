function [OutputVector] = qpskmap(InputVector)


t=1;
for N=1:2:length(InputVector)
    if(InputVector(1,N) == 0)
        OutputVector(1,t) = -1;
    else
        OutputVector(1,t) = 1;
    end

    if(InputVector(1,N+1) == 0)
        OutputVector(1,t) = OutputVector(1,t) - i;
    else
        OutputVector(1,t) = OutputVector(1,t) + i;
    end
    t = t+1;
end

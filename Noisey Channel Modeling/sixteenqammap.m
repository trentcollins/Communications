function [OutputVector] = sixteenqammap(InputVector)

t = 1;

for N=1:4:length(InputVector)
    if(InputVector(1,N) == 0)
        if(InputVector(1,N+1) == 0)
            OutputVector(1,t) = -3;
        else
            OutputVector(1,t) = -1;
        end
    else
       if(InputVector(1,N+1) == 0)
            OutputVector(1,t) = 3;
       else
            OutputVector(1,t) = 1;
       end
    end

    if(InputVector(1,N+2) == 0)
        if(InputVector(1,N+3) == 0)
            OutputVector(1,t) = OutputVector(1,t)+3i;
        else
            OutputVector(1,t) = OutputVector(1,t)+1i;
        end
    else
       if(InputVector(1,N+3) == 0)
            OutputVector(1,t) = OutputVector(1,t)-3i;
       else
            OutputVector(1,t) = OutputVector(1,t)-1i;
       end
    end
    t =t +1;
end

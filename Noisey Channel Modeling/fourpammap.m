function [OutputVector] = fourpammap(InputVector)


i = 1;
for N=1:2:length(InputVector)
    if(InputVector(1,N) == 0)
        if(InputVector(1,N+1) == 0)
            OutputVector(1,i) = -3;
        else
            OutputVector(1,i) = -1;
        end
    else
       if(InputVector(1,N+1) == 0)
            OutputVector(1,i) = 3;
       else
            OutputVector(1,i) = 1;
       end
    end
    i = i+1;
end

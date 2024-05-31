function [OutputVector] = eightpskmap(InputVector)

t = 1;
for N=1:3:length(InputVector)
    if(InputVector(1,N) == 0)
        if(InputVector(1,N+1) == 0)
            if(InputVector(1,N+2) == 0 )
                    I=0;
            else
                    I=1;
            end
        else %%01
            if(InputVector(1,N+2) == 0 ) %%010
                    I=3;
            else
                    I=2;
            end

        end
    else
        if(InputVector(1,N+1) == 0) %%10
            if(InputVector(1,N+2) == 0 ) %%100
                    I=7;
            else
                    I=6;
            end
        else %%01
            if(InputVector(1,N+2) == 0 ) %%110
                    I=4;
            else
                    I=5;
            end

        end



    end
    
    OutputVector(1,t) = exp(i*2*pi* (I/8));
    t = t+1;
end

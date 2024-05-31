function [g] = randbit(Size)

for N=1:Size
    g(1,N) = round(rand(1));
end
function z=qfunct(x)

b= (x>=0);
y1=b.*x; %select the positive entries of x
y2=(1-b).*(-x); %select, and flip the sign of, negative entries in x
z1 = (0.5*erfc(y1./sqrt(2))).*b; %Q(x) for positive entries in x
z2 = (1-0.5*erfc(y2./sqrt(2))).*(1-b); %Q(x) = 1 - Q(-x) for negative entries in x
z=z1+z2; %final answer (works for x with positive or negative entries)
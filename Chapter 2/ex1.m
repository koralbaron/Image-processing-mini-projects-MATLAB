L = 0.5;
x = (-L:0.001:L);
y =sign(x);
out = sinsum(x,16);
plot(x,y,x,out)

function out=sinsum(x,k)
out = zeros(size(x));
    for n =1:2:k
        out = out+4*sin(2*pi*n*x)/(pi*n);
    end
end
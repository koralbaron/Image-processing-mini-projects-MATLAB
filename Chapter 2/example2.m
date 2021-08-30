recon_ramp(16);
function recon_ramp(n)
    N= 2^9;
    x= 0:N-1;
    y=x;
    Y=fft(y);
    N= size(Y,2);
    ul= 0;
    uh= N-1;
    recon = (Y(ul+ 1)*exp(2*i*pi*(ul/N)*x)+ Y(uh+1)*exp(2*i*pi*(uh/N)*x))/N;
    for u=1:n
        ul=u;
        uh=N-u-1;
        recon= recon+ (Y(ul+1)*exp(2*i*pi*(ul/N)*x)+ Y(uh+1)*exp(2*i*pi*(uh/N)*x))/N;
    end
    figure(1);
    plot(x,y,x,abs(recon));
    legend('y', 'recon');
    text(100,400,strcat('n=', num2str(n)));
end

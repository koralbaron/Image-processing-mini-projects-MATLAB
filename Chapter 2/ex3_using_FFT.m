A=1;
X=12;
y=[A*ones(X,1);zeros(500,1)];
%plot(y);
plot(abs(fftshift(fft(y))));
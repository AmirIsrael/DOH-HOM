function fitDI

% **Input temperature vector T[C] and digital input vector DI**
T=[30.0:10:300.0]';
DI=[1193.8,1260.9,1336.0,1411.2,1493.2,1573.1,1672.5,1753.8,1840.9,1938.1,2037.3,2132.7,2223.1,2324.4,2429.3,2549.1,2655.4,2762.6,2886.9,2998.2,3118.8,3224.9,3349.2,3478.9,3607.9,3725.8,3838.1,3965.2]';
%Fit:
    ft=fittype('func( T, A, B, n)', 'independent','T', 'coefficients', {'A', 'B', 'n'});
    F=fit( T,DI, ft,'StartPoint', [1,1,1]);

%Fitted coefficients:
    A=F.A
    B=F.B
    n=F.n

    plot (T,func(T,A,B,n));
    hold on
    plot ( T,DI, '*');
end



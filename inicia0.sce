par=input('de [X,Y,l,N,dt,tmax,T]\n');

X=par(1); Y=par(2); l=par(3); N=par(4);
dt=par(5); tmax=par(6); T=par(7);

xset('auto clear','on') 
l2=l^2;
S=X*Y;

a=sqrt(S/N);

Nx=floor(X/a);
Ny=floor(Y/a);

//a=min(X/Nx, Y/Ny);

x=zeros(1,N); y=zeros(1,N);

for n=1:N;
    z=(n-1)/Nx;
    x(n)=a*(Nx*(z-floor(z))+.5);
    y(n)=a*(ceil(n/Nx)-.5);
end


vx=sqrt(T)*rand(1,N,'normal');
vy=sqrt(T)*rand(1,N,'normal');

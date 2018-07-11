

dt2=dt*dt; mdt2=.5*dt2; h=dt/2;

itmax=ceil(tmax/dt);
exec('forcas0.sce',-1);

for it=1:itmax;
   fxi=fx; fyi=fy;
   x=x+vx*dt+mdt2*fxi;
   y=y+vy*dt+mdt2*fyi;
   exec('forcas0.sce',-1);
   vx=vx+h*(fx+fxi);
   vy=vy+h*(fy+fyi);
   exec('reflete0.sce',-1);
   plot(x,y,'.')
   //sleep(33);
   //xset('auto clear','on');
    
end

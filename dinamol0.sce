
exec('inicia0.sce',-1);
while(length(tmax) > 0) 
   exec('integra0.sce',-1);
   Ec=(sum(vx.^2)+sum(vy.^2))/2;
   exec('potencial0.sce',-1);
   Energia=V+Ec;
   EcEpE=[Ec, V, Energia];
   T=Ec/N;
   tmax=input('novo tmax? se enter, encerra: tmax= ');
   if(length(tmax)>0);
     Tnova=input('deh novo T; se enter, mantem;  T= ');
     if(length(Tnova) > 0);
       renorm=sqrt(Tnova/T);
       vx=vx*renorm;
       vy=vy*renorm;
       T=Tnova;
     end;
   end
end

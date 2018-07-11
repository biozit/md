

V=0;
for n=1:N-1;
   p=n+1:N;
   delx=x(n)-x(p)';
   dely=y(n)-y(p)';
   R2=delx.^2+dely.^2;
   lista=find(R2<l2);
   if(length(lista)>0);
      lista=n+lista;
      delx=x(n)-x(lista)';
      dely=y(n)-y(lista)';
      r2=delx.^2+dely.^2;
      
      Vp=ones(r2)./(r2.^6) - 2*ones(r2)./(r2.^3);
      V=V+sum(Vp);
   end
end

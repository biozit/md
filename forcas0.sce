
fx=zeros(1,N);
fy=zeros(1,N);
fpx=zeros(N,N); fpy=fpx;
for k=1:N-1;
   p=k+1:N 
   delx=x(k)-x(p);
   dely=y(k)-y(p);
   R2=delx.^2+dely.^2;
   lista=find(R2<l2);
   if(length(lista)>0);
      lista=k+lista;
      delx=x(k)-x(lista);
      dely=y(k)-y(lista);
      r2=delx.^2+dely.^2;
      flj=12*(ones(r2)./(r2.^7) - ones(r2)./(r2.^4));
      
      fpx(lista,k)=(flj.*delx)';
      fpy(lista,k)=(flj.*dely)';
      fpx(k,lista)=-fpx(lista,k)';
      fpy(k,lista)=-fpy(lista,k)';
   end
end
fx=sum(fpx,1);
fy=sum(fpy,1);

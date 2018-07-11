

list1=find(x<=0.1);


if(length(list1) > 0);
vx(list1)=abs(vx(list1));
end
list2=find(x>=X-0.1);

if(length(list2) > 0);
vx(list2)=-abs(vx(list2));
end
list3=find(y<=0.1);

if(length(list3) > 0);
vy(list3)=abs(vy(list3));
end
list4=find(y>=Y-0.1);

if(length(list4) > 0);
vy(list4)=-abs(vy(list4));
end

    

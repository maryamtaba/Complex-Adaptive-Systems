%% Plotting the Lorenz Attractor

clear all

Sigma = 10;
Beta = 8/3;
p = 28;

x = randi([-10 10],1);
y = randi([-10 10],1);
z = randi([-10 10],1);


for t=1:5000,
  
    xt = x+ (.01*(Sigma*(y-x)));
    yt= y+  (.01*(x* (p-z)-y)); 
    zt = z+ (.01*( (x*y)-Beta*z));
    
    x = xt;
    y=yt;
    z=zt;
    
    allx(t) = xt;
    ally(t) = yt;
    allz(t) = zt;
    
end

plot3 (allx,ally,allz);
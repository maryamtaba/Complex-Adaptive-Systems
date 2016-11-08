
%%Simulating and plotting the Logistic Map

for h =1:4000,
    x=0;
    y= rand(1,1);
    for t=1:1000,
        ht= .001*h;
        yt = ht*y*(1-y);
        y=yt;
        if (t>960),
            x=x+1;
            result(h,x)=yt;
        end
    end
end

plot(result,'ko','MarkerSize',1)        
        
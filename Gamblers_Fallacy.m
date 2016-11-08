%%Simulating Gamblers Fallacy
ff=[];
result= [];
x = randi([0,1],1,10000);

for i=4:9999,
    if (x(i)==1) & x(i-3 : i-1)==[1 1 1],
        ff(i-3)=x(i+1);
        %ff = [ff, x(i+1)]
    end
end


if( sum(ff(1:end))== length(ff)/2),
   
   result = 'Equal number of heads & tails'
else
     
      result = 'Number of heads & tails are not equal'
end

%%
%%Proving d?Alembert wrong

clear
hcount = 0;

for j=1:10000,
    
    flip1= randi([0,1]);
    if (flip1==1)
         flip2= randi([0,1]);
         if (flip2==1)
             hcount=hcount+1;
         end
    end
end

prob = hcount/j;

disp(['The number of times two heads in a row happened in 10000 tries is ' num2str(hcount) ])

disp(['Which means the probability of two heads in a row happening is about ' num2str(prob) ])



     
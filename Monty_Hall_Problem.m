%%  Monte Carlo the Monty Hall Problem
clear
doors = zeros (1,3); 
carplace = randi([1,3]);
doors(carplace) = 1;
result =[];

for f=1:10000,

    choiceInd = randi ([1,3]);
    result = [result,doors(choiceInd)];
end
disp(['The probability of winning the car with STAYING strategy is:  ' num2str(mean(result)) ])
 
    
clear
doors = zeros (1,3); 
carplace = randi([1,3]);
doors(carplace) = 1;
result =[];    
for h = 1:10000,
    
     choiceInd = randi ([1,3]);
     
     if (choiceInd == carplace),
         choiceInd=choiceInd+1;
     elseif (choiceInd~=carplace)
         
        choiceInd=carplace;
     end
        result = [result,doors(choiceInd)];
end

       disp(['The probability of winning the car with SWITCHING strategy is:  ' num2str(mean(result)) ])

%% Plotting the FORMAL (black-and-white) Mandelbrot Set, using this iterative equation: z = z2 + c

Mandelbrot= zeros (300,200);

for Real=1:300, 
    for Imag=1:200, 
        z=0;
        zs=zeros(300);
        for n=1:100,
            r= (Real/100)-2;
            Im= (Imag/100)-1;
            
            c= complex(r,Im);
            z = (z^2)+c;
            zs(n)= z;
        end
       if(isempty(zs(abs(zs) > 2))),  %all zs values are not going to infinity  if 
           
            Mandelbrot(Real,Imag)=1; %change the zero to a one in that cell of the Mandelbrot matrix 

        end
    end
end


MAP = [1,1,1;0,0,0];
colormap(MAP);
image([-2:0.01:1],[-1:0.01:1], Mandelbrot'*2);
axis equal;
%% Simulating the Game of Life in balck and white grid
clear all;
n=50;
GRID = rand(n,n)>.40;

up = [1 1:n-1];
down = [2:n n];
colormap(gray(2));
for i=1:10000,
    neighbors= GRID(up,:)+GRID(down,:)+GRID(:,up)+GRID(:,down)+GRID(down,down)+GRID(up,up)+GRID(down,up)+GRID(up,down);
    
    GRID = (GRID & (neighbors == 2)) | (neighbors == 3);
    image (GRID*2)
    pause(.1);
    
end
    

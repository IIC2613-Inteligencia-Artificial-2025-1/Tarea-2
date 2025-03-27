% solucionable con bound = 7

% >> Definición del problema <<
rangeX(0..2).
rangeY(0..2).

% Robot
robot(0..1).
robotOn(0,0,2,0). % robot id 0 está en la ubicación (2, 0) en el tiempo 0
robotOn(1,1,1,0).

% Objetos
object(0..4).

% Estanterías
shelf(0..2).
shelfOn(0, 0, 0, 0). %shelf con id 0 está en la ubicación (0, 1) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfHas(0, 1).

shelfOn(1, 1, 1, 0).
shelfHas(1, 1).
shelfHas(1, 3).

shelfOn(2, 2, 2, 0).
shelfHas(2, 2).
shelfHas(2, 4).




% Objetivos
goal(0..2). 
goalOn(0, 2, 0).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).

goalOn(1, 1, 1).
goalWants(1, 3).
goalWants(1, 1).
goalWants(1, 0).

goalOn(2, 0, 2).
goalWants(2, 2).
goalWants(2, 4).
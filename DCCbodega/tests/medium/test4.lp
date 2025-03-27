% solucionable con bound = 15

% >> Definición del problema <<
rangeX(0..2).
rangeY(0..2).

% Robot
robot(0..1).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
robotOn(1,2,2,0).

% Objetos
object(0..3).

% Estanterías
shelf(0..3).
shelfOn(0, 0, 1, 0). %shelf con id 0 está en la ubicación (0, 1) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0

shelfOn(1, 0, 2, 0).
shelfHas(1, 1).

shelfOn(2, 2, 2, 0).
shelfHas(2, 2).

shelfOn(3, 2, 0, 0).
shelfHas(3, 3).

wallOn(1,1).

% Objetivos
goal(0). 
goalOn(0, 0, 0).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).
goalWants(0, 2).
goalWants(0, 3).
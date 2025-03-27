% solucionable con bound = 9

% >> Definición del problema <<
rangeX(0..3).
rangeY(0..1).

% Robot
robot(0..1).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
robotOn(1,1,0,0).

% Objetos
object(0..4).

% Estanterías
shelf(0..3).
shelfOn(0, 0, 1, 0). %shelf con id 0 está en la ubicación (0, 1) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfHas(0, 1).

shelfOn(1, 1, 1, 0).
shelfHas(1, 1).
shelfHas(1, 3).

shelfOn(2, 2, 1, 0).
shelfHas(2, 2).
shelfHas(2, 4).

shelfOn(3, 2, 0, 0).
shelfHas(3, 3).
shelfHas(3, 1).



% Objetivos
goal(0..1). 
goalOn(0, 3, 0).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).

goalOn(1, 3, 1).
goalWants(1, 2).
goalWants(1, 4).
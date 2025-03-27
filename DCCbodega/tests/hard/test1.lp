% solucionable con bound = 16

% >> Definición del problema <<
rangeX(0..5).
rangeY(0..3).

% Robot
robot(0..2).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
robotOn(1,1,0,0).
robotOn(2,1,1,0).

% Objetos
object(0..3).

% Estanterías
shelf(0..3).
shelfOn(0, 3, 0, 0). %shelf con id 0 está en la ubicación (3, 0) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfOn(1, 3, 1, 0).
shelfHas(1, 1).
shelfOn(2, 4, 0, 0).
shelfHas(2, 2).
shelfOn(3, 5, 0, 0).
shelfHas(3, 3).

% Paredes
wallOn(1, 2).
wallOn(2, 2).
wallOn(4, 1).
wallOn(4, 2).

% Objetivos
goal(0..1). 
goalOn(0, 5, 1).  % goal id 0 en (0,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).
goalWants(0, 3).

goalOn(1, 0, 2).
goalWants(1, 1).
goalWants(1, 2).

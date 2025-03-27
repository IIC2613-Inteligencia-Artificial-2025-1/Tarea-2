% solucionable con bound = 28

% >> Definición del problema <<
rangeX(0..4).
rangeY(0..4).

% Robot
robot(0).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0

% Objetos
object(0..2).

% Estanterías
shelf(0..2).
shelfOn(0, 0, 4, 0). %shelf con id 0 está en la ubicación (0, 3) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfOn(1, 4, 2, 0).
shelfHas(1, 1).
shelfOn(2, 1, 1, 0).
shelfHas(2, 2).

% Paredes
wallOn(0, 2).
wallOn(1, 2).
wallOn(2, 2).
wallOn(3, 2).
tableOn(0, 1).
tableOn(1, 0).


% Objetivos
goal(0). 
goalOn(0, 2, 3).  % goal id 0 en (2,3)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 2).


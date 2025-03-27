% solucionable con bound = 28

% >> Definición del problema <<
rangeX(0..5).
rangeY(0..5).

% Robot
robot(0).
robotOn(0,3,3,0). % robot id 0 está en la ubicación (3, 3) en el tiempo 0

% Objetos
object(0..1).

% Estanterías
shelf(0..1).
shelfOn(0, 0, 0, 0). %shelf con id 0 está en la ubicación (0, 3) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfOn(1, 0, 5, 0).
shelfHas(1, 1).

% Paredes
wallOn(1, 1).
wallOn(1, 2).
wallOn(1, 3).
wallOn(1, 4).
wallOn(3, 1).
wallOn(3, 2).
wallOn(3, 4).
wallOn(4, 2).
wallOn(4, 3).
wallOn(4, 4).
tableOn(2, 2).


% Objetivos
goal(0). 
goalOn(0, 2, 1).  % goal id 0 en (0,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).

% solucionable con bound = 17

% >> Definición del problema <<
rangeX(0..7).
rangeY(0..3).

% Robot
robot(0..1).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
robotOn(1,0,1,0).

% Objetos
object(0..1).

% Estanterías
shelf(0..1).
shelfOn(0, 0, 3, 0). %shelf con id 0 está en la ubicación (0, 3) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfOn(1, 2, 3, 0).
shelfHas(1, 1).

% Paredes
wallOn(1, 2).
wallOn(1, 1).
wallOn(1, 0).
wallOn(3, 3).
wallOn(3, 2).
wallOn(3, 1).
wallOn(5, 2).
wallOn(5, 1).
wallOn(5, 3).


% Objetivos
goal(0). 
goalOn(0, 7, 3).  % goal id 0 en (0,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).


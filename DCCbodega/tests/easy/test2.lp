% solucionable con bound = 8

% >> Definición del problema <<
rangeX(0..2).
rangeY(0).

% Robot
robot(0).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0

% Objetos
object(0..1).

% Estanterías
shelf(0..1).
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfHas(1, 1).
shelfOn(0, 0, 0, 0). %shelf con id 0 está en la ubicación (1, 0) en el tiempo 0
shelfOn(1, 2, 0, 0).

% Objetivos
goal(0). 
goalOn(0, 1, 0).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1).
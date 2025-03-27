% Solucionable con bound = 6

% >> Definición del problema <<
rangeX(0..3).
rangeY(0..1).

% Robot
robot(0..2).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
robotOn(1,1,0,0). % robot id 1 está en la ubicación (1, 0) en el tiempo 0
diagRobotDefined(1). % robot id 1 es diagonal
robotOn(2,2,1,0). % robot id 2 está en la ubicación (2, 0) en el tiempo 0

% Objetos
object(0).

wallOn(0, 1).
wallOn(1, 1).
wallOn(2, 0).
wallOn(3, 0).

% Estanterías
shelf(0).
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfOn(0, 1, 0, 0). %shelf con id 0 está en la ubicación (1, 0) en el tiempo 0

% Objetivos
goal(0). 
goalOn(0, 3, 1).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
% Solucionable con bound = 18

% >> Definición del problema <<
rangeX(0..3).
rangeY(0..3).

% Robot
robot(0..2).
robotOn(0,0,1,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
diagRobotDefined(0). % robot id 0 es diagonal
robotOn(1,1,1,0). % robot id 1 está en la ubicación (1, 0) en el tiempo 0
diagRobotDefined(1). % robot id 1 es diagonal
robotOn(2,3,0,0). % robot id 2 está en la ubicación (2, 0) en el tiempo 0

% Objetos
object(0..1).

wallOn(0, 2).
wallOn(1, 3).
wallOn(1, 0).
wallOn(2, 1).
tableOn(3, 2).

% Estanterías
shelf(0..1).
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfOn(0, 2, 0, 0). %shelf con id 0 está en la ubicación (1, 0) en el tiempo 0
shelfHas(1, 1). % shelf id 1 tiene objeto id 1
shelfOn(1, 3, 1, 0). %shelf con id 1 está en la ubicación (2, 1) en el tiempo 0

% Objetivos
goal(0). 
goalOn(0, 0, 3).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 1). % goal id 0 requiere objeto id 1
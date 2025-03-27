% solucionable con bound = 12

% >> Definición del problema <<
rangeX(0..3).
rangeY(0..1).

% Robot
robot(0..1).
robotOn(0,0,0,0). % robot id 0 está en la ubicación (0, 0) en el tiempo 0
robotOn(1,3,1,0).

% Objetos
object(0..5).

% Estanterías
shelf(0..3).
shelfOn(0, 1, 1, 0). %shelf con id 0 está en la ubicación (0, 1) en el tiempo 0
shelfHas(0, 0). % shelf id 0 tiene objeto id 0
shelfHas(0, 3).
shelfHas(0, 5).

shelfOn(1, 1, 0, 0).
shelfHas(1, 4).
shelfHas(1, 2).
shelfHas(1, 1).

shelfOn(2, 2, 1, 0).
shelfHas(0, 2).
shelfHas(2, 2).
shelfHas(2, 3).

shelfOn(3, 2, 0, 0).
shelfHas(3, 5).
shelfHas(3, 4).
shelfHas(3, 0).

% Objetivos
goal(0..3). 
goalOn(0, 0, 0).  % goal id 0 en (2,0)
goalWants(0, 0). % goal id 0 requiere objeto id 0
goalWants(0, 3).
goalWants(0, 4).
goalWants(0, 5).

goalOn(1, 1, 0).
goalWants(1, 1).
goalWants(1, 2).
goalWants(1, 3).
goalWants(1, 5).

goalOn(2, 3, 0).
goalWants(2, 0).
goalWants(2, 1).
goalWants(2, 2).
goalWants(2, 4).

goalOn(3, 3, 1).
goalWants(3, 3).
goalWants(3, 4).
goalWants(3, 5).

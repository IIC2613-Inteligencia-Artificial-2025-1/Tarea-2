% Existirá un máximo de instantes de tiempo, denotado por la constante bound
time(1..bound).

% Los robots cuentan con varias acciones posibles, moverse en las 4 direcciones, no hacer nada o
% recoger/soltar una caja
action(up).
action(down).
action(left).
action(right).
action(wait).
action(liftShelf).
action(dropShelf).


% Para cada instante de tiempo T, cada robot R puede ejecutar una única acción de las 7/11 posibles:
1 {exec(R, A, T) : action(A)} 1 :- robot(R), time(T+1).



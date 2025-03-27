student(S)        :- info(S, _, _, _, _, _).
section(S, Sec)   :- info(S, Sec, _, _, _, _).
gender(S, G)      :- info(S, _, G, _, _, _).
high_school(S, H) :- info(S, _, _, H, _, _).
region(S, R)      :- info(S, _, _, _, R, _).
admission(S, A)   :- info(S, _, _, _, _, A).
admission_type(A) :- admission(_, A).
team(T)           :- section_of_team(T, _).

{ assign(S, T) : section_of_team(T, Sec) } = 1 :- student(S), section(S, Sec).

:- team(T), #count { S : assign(S, T), gender(S, f) } = 1.

:- team(T), #count { S : assign(S, T), region(S, otra) } = 1.

:- team(T), admission_type(A), #count { S : assign(S, T), admission(S, A) } = 1.

:- team(T), assign(S1, T), assign(S2, T), high_school(S1, H1), high_school(S2, H2), S1 != S2.

size_of_team(T , Size) :- team(T), #count {S : assign(S,T)} = Size.

:- team(T), size_of_team(T, Size), Size>8.
:- team(T), size_of_team(T, Size), Size<7.

#show assign/2.
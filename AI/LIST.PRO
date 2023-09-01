domains
list = integer*
len = integer

predicates
member(integer,list)
length(list,len)
concate(list,list,list)

clauses
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

length([],0).
length([_],1).
length([_|T],N) :- length(T,N1),N=N1+1.

concate([],L,L).
concate([H|T],L2,[H|L3]) :- concate(T,L2,L3).
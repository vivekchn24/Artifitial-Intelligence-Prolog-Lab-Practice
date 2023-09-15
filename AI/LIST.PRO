domains
list = integer*
len = integer

predicates
member(integer,list)
length(list,len)
concat_list(list,list,list)
reverse_list(list,list)
delete_list(integer,list,list)

clauses
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

length([],0).
length([_],1).
length([_|T],N) :- length(T,N1),N=N1+1.

concat_list([],L,L).
concat_list([X1|L1],L2,[X1|L3]):-concat_list(L1,L2,L3).

reverse_list([],[]).
reverse_list([H|T],RL):-reverse_list(T,RT),concat_list(RT,[H],RL).

delete_list(X2,[X2|T1],T1).
delete_list(X2,[Y|T1],[Y|T2]) :- delete_list(X2,T1,T2).

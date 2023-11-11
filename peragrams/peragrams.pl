[kattio].

main :-
    repeat,
    read_string(X),
    (X == end_of_file ;
        solve(X),
    fail
).


solve(S) :-
    string_to_list(S,L),
    sort(L, L_nub),
    count_each(L_nub,L, CountList),
    filter_odds(CountList,OddList),
    length(OddList, NumberOfOdds),
    get_answer(NumberOfOdds, Answer),
    print(Answer), nl.

%% Count the number of times C occurs in the list
%% Return the count in A
count_char(_,[],0).
count_char(C,[C|T],A) :-
    count_char(C,T,A1),
    A is A1+1,!. 
count_char(C,[_|T],A) :-
    count_char(C,T,A). 

%% Do the count on every element of the first list in the second list
%% Return a list of counts in the third list
count_each([],_,[]).
count_each([H|T],L,Occurances) :-
    count_char(H,L,Num),
    count_each(T,L,NewOccurances),
    append(NewOccurances, [Num], Occurances).

%% Check if number is odd
is_odd(N) :-
    N mod 2 =\= 0.

%% Takes a list of numbers and returns only the odd ones
filter_odds(L, OddList) :-
    include(is_odd, L, OddList).

%% Calculates the answer for printing
get_answer(0,Answer) :-
    Answer is 0,!.
get_answer(NumberOfOdds, Answer) :-
    Answer is NumberOfOdds - 1.
[kattio].


sticks(1,2).
sticks(2,5).
sticks(3,5).
sticks(4,4).
sticks(5,5).
sticks(6,6).
sticks(7,3).
sticks(8,7).
sticks(9,6).
sticks(0,6).

main :-
    read_int(_),
    repeat,
    read_int(N),
    (N == end_of_file ;
        solve(N),
    fail
    ).

solve(N):-
    make_number_list(N, L),
    write(L),nl.

make_number_list(0, []).

make_number_list(N, L) :-
    sticks(Number, N),
    NewN is N - Number,
    NewN >= 2,
    make_number_list(NewN, NewList),
    append(NewList, [Number], L).
    
    
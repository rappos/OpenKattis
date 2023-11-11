[kattio].

main :-
    repeat,
    read_int(X),
    (X == end_of_file ;
        score(X),
    fail
).

point('single 1', 1).
point('single 2', 2).
point('single 3', 3).
point('single 4', 4).
point('single 5', 5).
point('single 6', 6).
point('single 7', 7).
point('single 8', 8).
point('single 9', 9).
point('single 10', 10).
point('single 11', 11).
point('single 12', 12).
point('single 13', 13).
point('single 14', 14).
point('single 15', 15).
point('single 16', 16).
point('single 17', 17).
point('single 18', 18).
point('single 19', 19).
point('single 20', 20).
point('triple 7', 21).
point('double 11', 22).
point('double 12', 24).
point('double 13', 26).
point('triple 9', 27).
point('double 14', 28).
point('triple 10', 30).
point('double 16', 32).
point('triple 11', 33).
point('double 17', 34).
point('double 18', 36).
point('double 19', 38).
point('triple 13', 39).
point('double 20', 40).
point('triple 14', 42).
point('triple 15', 45).
point('triple 16', 48).
point('triple 17', 51).
point('triple 18', 54).
point('triple 19', 57).
point('triple 20', 60).


score(1) :-
    write('single 1'),!.
score(2) :-
    write('single 2'),!.
score(S) :-
    point(P1, A),
    point(P2, B),
    point(P3, C),
    S is A+B+C ->
    write(P1), nl,
    write(P2), nl,
    write(P3), nl;
    write('impossible\n').
% 1.menghitung elemen pada 2 buah list
%count([], [], 0). %(aturan pertama untuk menghitung 2 buah list kosong apabila kedua lsit kosong maka nilai nya 0)
%count([_ | T1], [], R) :- count(T1, [], R1), R is R1 + 1. %(aturan kedua jika list pertama tidak kosong,namun list kedua kosong)
%count([], [_ | T2], R) :- count([], T2, R1), R is R1 + 1. %(aturan ke 3.dengan menghilangkan elemen pertamanya)
%count([_ | T1], T2, R) :- count(T1, T2, R1), R is R1 + 1. %(melakukan rekursi ke kedua list secara bersamaan)

%2.
%multiply([], 0).  % Jika list kosong, hasilnya adalah 0
%multiply([X], X). % Jika list hanya berisi satu elemen, hasilnya adalah elemen itu sendiri.
%multiply([H | T], R) :- multiply(T, R1), R is H * R1. % Untuk list dengan lebih dari satu elemen, hasilnya adalah hasil perkalian dari elemen pertama dengan hasil perkalian sisa list.

%3
%palindrome(List) :- reverse(List, List).% List adalah palindrome jika List sama dengan reverse(List).

%4
%duplicate_remove(List, Result) :-sort(List, Result).%di mana setiap list diquery akan diurutkan dan duplikatnya akan dihapus.

%5
%count_occurrences_better(_, [], 0). 
%count_occurrences_better(X, [X|T], R) :- count_occurrences_better(X, T, R1), R is R1 + 1.
%count_occurrences_better(X, [_|T], R) :- count_occurrences_better(X, T, R). 

%count_occurrences_better(X, List, Count) :-
    %bagof(X, member(X, List), Instances),
    %length(Instances, Count). 


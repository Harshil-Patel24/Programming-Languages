:- initialization main, halt.

fizzbuzz(N) :- 0 is N mod 3, \+(0 is N mod 5), write('FIZZ'), nl.
fizzbuzz(N) :- 0 is N mod 5, \+(0 is N mod 3), write('BUZZ'), nl.
fizzbuzz(N) :- 0 is N mod 15, write('FIZZBUZZ'), nl.
fizzbuzz(N) :- \+(0 is N mod 3), \+(0 is N mod 5), write(N), nl.

loop(I,I) :- write('Finished'), nl.
loop(I,J) :- I < J + 1, fizzbuzz(I), Q is I + 1, loop(Q, J).

main :- loop(0,1000).

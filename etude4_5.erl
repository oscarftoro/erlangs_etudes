-module(etude4_5).
-export([raise/2, nth_root/2]).
-author("oscar felipe").

raise(X,N) ->
    if N == 0 ->
            1;
       N == 1 ->
            X;
       N > 0 ->
            raise(X,N,1);
       N < 0 ->
           1.0 / raise(X,-N,1)
    end.


raise(X,N,Accumulator)->
    if N == 0 ->
            Accumulator;
       true ->
            raise(X,N-1,Accumulator * X)
    end.

%% Newtin-Raphson method to calculate the nth root of a number
%% with tail recursion

nth_root(X,N)->
    nth_root(X,N,X/2.0).


nth_root(X,N,A) ->
    F = calculate_F(A,N,X),
    Fprime = calculate_Fprime(N,A),
    Next = A - F /Fprime,
    Change = abs(Next - A),
    io:format("Current guess is ~p~n",[A]),

    if Change / A < 1.0e-8 ->
            Next;
       true -> nth_root(X,N,Next)
    end.



calculate_F(A,N,X) -> raise(A,N) - X.

calculate_Fprime(N,A) -> N * raise(A,N-1).

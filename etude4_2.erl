-module(etude4_2).
-export([gcd/2]).
-author("oscar felipe").
%% gcd is a function that return the greater common divisor of two numbers
%% using Dijkstra's method
gcd(M,N)->
    if M == N ->  M;
       M > N ->  gcd(M-N,N);
       true ->  gcd(M,N-M)
    end.

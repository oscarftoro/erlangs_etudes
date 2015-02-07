-module(etude4_3).
-export([raise/2]).

raise(X,N) ->
    if N == 0 ->
            1;
       N == 1 ->
            X;
       N > 0 ->
            X * raise(X,N-1);
       N < 0 ->
            1.0 / raise(X,abs(N))
    end.

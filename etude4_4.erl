-module(etude4_4).
-export([raise/2]).

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


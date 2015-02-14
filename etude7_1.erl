-module(etude7_1).
-export([derivative/2]).


derivative(Fun,P)->
    (Fun(P + 1.0e-10) - Fun(P))/1.0e-10.

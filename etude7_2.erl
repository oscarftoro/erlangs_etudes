-module(etude7_2).
-export([olders_than_40/1]).

%use this list to test
%People = [{"Federico", $M, 22}, {"Kim", $F, 45}, 
%	      {"Hansa", $F, 30},{"Tran", $M, 47}, 
%	      {"Cathy", $F, 32}, {"Elias", $M, 50}],
olders_than_40(P)->
    [N || {N,_,A} <- P, A > 40].

olders_than_40_or_male(P)->
    [N || {N,S,A} <- P, (A > 40) or (S =:= $M)].

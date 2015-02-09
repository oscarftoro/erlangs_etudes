-module(etude6_1).
-export([minimum/1]).

-spec minimum([number()],[number()])-> number().
minimum([],R) when R /= []->
    R;
minimum([H|T],[]) ->
    minimum(T,H);
minimum([H|T],R) ->
    if H < R ->
	    minimum(T,H);
       true ->
	    minimum(T,R)
    end.

minimum(L)->    
    minimum(L,[]).

    

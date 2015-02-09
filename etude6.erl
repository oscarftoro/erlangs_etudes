-module(etude6).
-export([minimum/1,maximum/1]).

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
-spec minimum([number()]) -> number().
minimum(L)->    
    minimum(L,[]).

-spec maximum([number()])->number().
maximum(L)->
    maximum(L,[]).

-spec maximum(list(),list())-> number().
maximum([],R) when R /= []->
    R;
maximum([T|H],[]) ->
    maximum(H,T);
maximum([H|T],R) when H > R ->
    maximum(T,H);
maximum([_H|T],R) ->
    maximum(T,R).

    
    
    

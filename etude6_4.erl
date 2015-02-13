-module(etude6_4).
-export([alert/1]).


-spec alert([[integer()]]) -> [number()].
alert(L)->
    alert(L,1,[]).


alert([H|T],Cnt,Acc) ->
    case  lists:any((fun(X) -> X >= 4 end),H) of
	true ->
	     alert(T,Cnt+1,Acc ++ [Cnt]);
	false -> 
	    alert(T,Cnt+1,Acc)
    end;
alert([],_Cnt,Acc) ->
    Acc.

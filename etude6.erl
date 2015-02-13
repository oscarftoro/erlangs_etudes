-module(etude6).
-export([minimum/1,maximum/1,range/1,julian/1]).
-import(etude5_2,[date_parts/1]).

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

-spec range([number()]) ->[number()].
range(L) ->
    [minimum(L),maximum(L)].
    
-spec julian(string()) -> integer().
julian(S) ->
   [Y,M,D] = date_parts(S),
    case is_leap_year(Y) of
	true -> February = 29;
	false -> February = 28
    end,
    DaysPerMonth = [31, February, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
    julian(Y,M,D,DaysPerMonth,0).
-spec julian(integer(),integer(),integer(),[integer()],integer()) ->
integer().

julian(Y,M,D,L,Acc) when M > (13 - length(L)) ->
    julian(Y,M,D,tl(L),Acc + hd(L));
julian(Y,M,D,L,Acc) when M =:= (13 - length(L)) ->
    Acc + D.


is_leap_year(Year) ->
    (Year rem 4 == 0 andalso Year rem 100/= 0) orelse (Year rem 400 == 0).
    
    

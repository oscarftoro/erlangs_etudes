-module(etude7_3).

-export([mean/1,stdv/1]).

-spec mean([number()]) -> number().
mean(L)->
    
    lists:foldl(fun(X,Acc) -> X + Acc end,0,L)/length(L).

stdv_sums(Value,Acc) ->
    [Sum, SumSquares] = Acc,
    [Sum + Value, SumSquares + Value * Value].

-spec stdv([integer()]) -> float().

stdv(Ls)-> 
    L = length(Ls),
    [Sum,SquareSum] = lists:foldl(fun stdv_sums/2,[0,0],Ls),
    math:sqrt((L * SquareSum - Sum * Sum) / (L*(L - 1))).
			 

-module(etude7_3).

-export([mean/1,stdv/2]).

-spec mean([number()]) -> number().
mean(L)->
    
    %lists:sum(L)/length(L)
    lists:foldl(fun(X,Acc) -> X + Acc end,0,L)/length(L).

stdv_sums(Value,Acc) ->
    [Sum,SumSquares] = Acc,
    [Sum + Value, SumSquares + Value * Value].

-spec stdv([integer()]) -> float()
stdv(Ls)-> 
    [Sum,SquareSum] = lists:foldl(stdv(K,N),[0,0],K),
    
    math:sqrt(((N * SquaresSum) - (Sum * Sum))/N *(N - 1)).
			 

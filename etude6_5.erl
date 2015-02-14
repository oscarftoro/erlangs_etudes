-module(etude6_5).
-export([generate_rndm_num/1,
	 teeth_generator/1,
	 random_0_1_generator/0]).

% first parameter is a list of 0 and 1
% 0 represents an absent toot
-spec generate_teeth(string(),float()) ->[number()].
generate_teeth(S,F)->
    random:seed(now()),
    generate_teeth(S,F,[]).

-spec generate_teeth([integer()],float(),list()) -> [number()].
generate_teeth([H|T],F,Acc) ->
    case H of
	1 -> 
	    generate_teeth(T,F,Acc ++ [generate_tooth(F)]);
	0 ->
	    generate_teeth(T,F,Acc ++ [[0]])
    end;

generate_teeth([],_F,Acc) ->
    Acc.

% generate a list of six numbers between 0 and N
-spec generate_rndm_num(integer()) ->[integer()].
generate_rndm_num(N)->
    lists:map(fun(_) -> random:uniform(N) end,lists:seq(1,6)).
    
% make a collection of teeth with a float number that represents the percentage 
% of a 

generate_tooth(F) when F > 0 , F =< 1 ->
    case random:uniform() > F of
	true->
	    generate_rndm_num(4);
	false ->
	    generate_rndm_num(3)
    end.
%START HERE!!!
%generate a list of teeth where 0 represents the absent of a tooth
% float represent a float between 0 and 1 
teeth_generator(F)->
    generate_teeth([random_0_1_generator() || _ <-lists:seq(0,35)],F).

% generate a seudo random number between 0 and 1 being more likely to generate 1
-spec random_0_1_generator()-> number(). 
random_0_1_generator() ->
    case random:uniform() > 0.99 of
	true ->  0;
	false -> 1
    end.

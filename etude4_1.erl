-module(etude4_1).
-compile(export_all).
-author(oscarToro).


%% @author Oscar Felipe 
%% @doc Functions for calculating areas of geometric shapes.
%% @copyright 2013 Creative Commons
%% @version 0.1
%% area takes a tuple where the first element is an atom of type:
%% triangle, rectangle or elipse. The two other parameters are numbers that are used to
%% complete the area calculation. In elipse is the Mayor side and the Minor side
%% this Étude reimplement the Étude 3-2 using "case of" for pattern matching

area(Data) ->
    case Data of
        {triangle,Side1,Side2} when Side1 > 0 andalso Side2 > 0->
            (Side1 * Side2) / 2;
        {rectangle,Side1,Side2} when Side1 > 0 andalso Side2 >0 -> 
            Side1 * Side2 ;
        {elipse,Side1,Side2} when Side1 >0 andalso Side2 > 0 ->
            math:pi() * Side1 * Side2;
        {_,Side1,Side2} ->
            io:fwrite("jeg kan ikke forstå hvad du siger~n")
    
    end.

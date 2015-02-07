-module(etude3_3).
-compile(export_all).
-author(oscarToro).


%% @author Oscar Felipe 
%% @doc Functions for calculating areas of geometric shapes.
%% @copyright 2013 Creative Commons
%% @version 0.1


%% @doc Calculate the Area of different figures with pattern matching 
%% and Guards.
%% Returns the product of its arguments for a rectangle, triangle, or  an ellipse
%% for values greater than zero.
%% when the atributes does not match the atoms of the functions
%% or when the values are negatives or not numbers, the module returns 0.

-spec(area(atom(), number(),number()) -> number()).


area(rectangle, Side1,Side2) when Side1 > 0 andalso Side2 > 0,
is_number(Side1), is_number(Side2)  ->
    Side1 * Side2;
area(triangle,Side1,Side2) when Side1 > 0, Side2 > 0,
is_number(Side1), is_number(Side2) ->
    (Side1*Side2) /2;
area(ellipse, MayorAxe,MinorAxe) when MayorAxe > 0, MinorAxe > 0 , 
is_number(MayorAxe), is_number(MinorAxe) ->
    math:pi()*MayorAxe*MinorAxe;

area(_,A,B) when A < 0 ; B < 0 -> 
    io:format("Both numbers must be greater than or equal to zero.~n");
area(_,A,_B) when is_number(A) =:= false ->
    io:format("Error in first number. ~n");
area(_,_A,B) when is_number(B) =:= false ->
    io:format("Error in second number.~n");

area(_,_,_) -> 
     0.
 


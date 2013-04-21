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

area(rectangle, Side1,Side2) when Side1 > 0 andalso Side2 > 0  ->
    Side1 * Side2;
area(triangle,Side1,Side2) when Side1 > 0, Side2 > 0 ->
    (Side1*Side2) /2;
area(elipse, MayorAxe,MinorAxe) when MayorAxe > 0, MinorAxe > 0 ->
    math:pi()*MayorAxe*MinorAxe;
area(_,_,_) -> 0. 

 


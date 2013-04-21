-module(etude3_1).
-compile(export_all).
-author(oscarToro).

%Area of different figures with pattern matching
area(rectangle, Side1,Side2) ->
    Side1 * Side2;
area(triangle,Side1,Side2) ->
    (Side1*Side2) /2;
area(elipse, MayorAxe,MinorAxe) ->
    math:pi()*MayorAxe*MinorAxe.%3.141592653589793

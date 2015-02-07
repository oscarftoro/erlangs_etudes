-module(etude5_1).

-export([area/0,get_number/0,check_number/1]).
%% etude3_4
-import(etude3_3,[area/3]).


char_to_shape(Char) ->
    Result = if Char == $R -> rectangle;
                Char == $r -> rectangle;
                Char == $T -> triangle;
                Char == $t -> triangle;
                Char == $E -> ellipse;
                Char == $e -> ellipse;
                true -> unknown
             end,
    Result.

get_number() ->
    Answer =  io:get_line("R)ectangle, T)riangle, or E)llipse > "),
    Shape = char_to_shape(hd(Answer)),
    case Shape of

	rectangle ->
	    A = check_number(io:get_line("enter width > ")),
	    B = check_number(io:get_line("enter height > ")),
	    calculate(rectangle,A,B);

	triangle ->
	    A = check_number(io:get_line("enter base > ")),
	    B = check_number(io:get_line("enter height > ")),
	    calculate(triangle,A,B);
	
	ellipse ->
	    A  = check_number(io:get_line("enter mayor axis >")),
	    B  = check_number(io:get_line("enter minor axis >")),
	    calculate(ellipse,A,B);
	  
	unknown ->
	    io:format("unknown shape ~p~n",[hd(Answer)])
    end.

area() ->
    get_number().

-spec(calculate(atom(),number(),number())->number()).
calculate(Figure,A,B)->
    case Figure of
	rectangle ->
	    etude3_3:area(rectangle,A,B);
	triangle  ->
	    etude3_3:area(triangle,A,B);
	ellipse  ->
	    etude3_3:area(ellipse,A,B);

	_ -> io:format("no such a figure ~p~n ",[Figure])
		
    end.

-spec check_number(string()) -> number() | error.
check_number(Number)->
    case string:to_integer(Number) of
	{Integer, "\n" } ->
	   Integer;
	{_Int,_Cents} ->
	    case string:to_float(Number) of
		{error,no_float} ->
		    error;
		{Float, _Rest } ->
		   Float
	    end
    end.


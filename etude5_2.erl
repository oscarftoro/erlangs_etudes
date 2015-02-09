-module(etude5_2).
-export([date_parts/1]).

-spec date_parts(string()) -> [integer()].

date_parts(Date) ->
    List_of_strings = re:split(Date,"-",[{return, list}]),
        List_of_tuples = [string:to_integer(String) || String <- List_of_strings],
        [Int || {Int,_} <- List_of_tuples].

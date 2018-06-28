-module(functions).
-compile(export_all).

%% API
%%-export([]).


head([H|_]) -> H.

second([_, S | _]) -> S.

same(X,X) -> true;
same(_,_) -> false.

valid_time({{Y,M,D} = Date, {H,Min,S} = Time}) ->
  io:format("The Date tuple (~p) says today is: ~p.~p.~p,~n",[Date,D,M,Y]),
  io:format("The time tuple (~p) indicates: ~p:~p:~p.~n", [Time,H,Min,S]);
valid_time(_) ->
  io:format("Stop feeding me wrong data!~n").

old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.

right_age(X) when X >= 16, X =< 104 -> true;
right_age(_) -> false.

wrong_age(X) when X < 16; X > 104 ->  true;
wrong_age(_) -> false.

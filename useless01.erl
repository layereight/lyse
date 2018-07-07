-module(useless01).

%% API
-export([add/2, hello/0, greet_and_add_two/1, greet/2]).

% add up stuff
add(A, B) ->
  A + B.

%% say hi
hello() ->
  io:format("Hello, world!~n").

greet_and_add_two(X) ->
  hello(),
  add(X, 2).

greet(male, Name) ->
  io:format("Hello, Mr. ~s!", [Name]);

greet(femail, Name) ->
  io:format("Hello, Mrs. ~s!", [Name]);

greet(_, Name) ->
  io:format("Hello, ~s!", [Name]).

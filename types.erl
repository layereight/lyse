-module(types).

%% API
-export([convertToList/1]).

convertToList(X) when is_atom(X) -> atom_to_list(X);
convertToList(X) when is_float(X) -> float_to_list(X, [{decimals, 2}]);
convertToList(X) when is_integer(X) -> integer_to_list(X);
convertToList(X) when is_tuple(X) -> tuple_to_list(X);
convertToList(_) -> "nothing".

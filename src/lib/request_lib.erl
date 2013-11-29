-module(request_lib).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    param/1
]).

-type param()::[{atom(), binary()}].


-spec param(BinaryJSON::binary())->Result::param() | [].
param(BinaryJSON)->
    List = jsonx:decode(BinaryJSON, [{format, proplist}]),
    lists:map(
      fun({K, V})->
        {binary_to_atom(K, utf8), V}
      end,
      List).


%% ====================================================================
%% Internal functions
%% ====================================================================


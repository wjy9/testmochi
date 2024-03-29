%% @author Mochi Media <dev@mochimedia.com>
%% @copyright testmochi Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the testmochi application.

-module(testmochi_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for testmochi.
start(_Type, _StartArgs) ->
    testmochi_deps:ensure(),
    testmochi_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for testmochi.
stop(_State) ->
    ok.

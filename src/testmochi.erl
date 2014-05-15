%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc testmochi.

-module(testmochi).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the testmochi server.
start() ->
    testmochi_deps:ensure(),
    ensure_started(crypto),
    application:start(testmochi).


%% @spec stop() -> ok
%% @doc Stop the testmochi server.
stop() ->
    application:stop(testmochi).

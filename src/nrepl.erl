
-module(nrepl).





-export([

    erl_in_dir/1,

    c_all/1,
    c_all_with/2

]).





erl_in_dir(Dir) ->

    { ok, L } = file:list_dir(Dir),

    F = fun(Li) -> 
        case lists:reverse(Li) of 
            "lre." ++ _ -> true; 
            _           -> false
        end 
    end,

    lists:filter(F, L).





c_all(Dir) ->

    c_all_with(Dir, []).





% c_all_with("/projects/foo/src/", "/projects/foo/includes/").
% trailing slashes are mandatory.  unix style is probably mandatory in your lib.

c_all_with(Dir, Includes) ->
    
    [ compile:file(Dir ++ File, [ {i, IDir} || IDir <- Includes ]) || File <- erl_in_dir(Dir) ].

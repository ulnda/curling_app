-module(curling_feed).
-compile(export_all).

-behaviour(gen_event).

init([Pid]) ->
	{ok, Pid}.
 
handle_event(Event, Pid) ->
	Pid ! { curling_feed, Event },
	{ ok, Pid }.
 
handle_call(_, State) ->
	{ ok, ok, State }.
 
handle_info(_, State) ->
	{ ok, State }.
 
code_change(_OldVsn, State, _Extra) ->
	{ ok, State }.
 
terminate(_Reason, _State) ->
	ok.
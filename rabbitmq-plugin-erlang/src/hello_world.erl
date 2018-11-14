-module(hello_world).

-export([hello_world/0]).

-rabbit_boot_step({?MODULE,
                   [{description, "hello world rabbitmq plugin"},
                    {mfa, {?MODULE, hello_world, []}},
                    {requires, notify_cluster}]}).

hello_world() ->
    io:fwrite("Hello World!~n", []).

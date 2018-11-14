PROJECT = rabbitmq_plugin_elixir

DEPS = rabbit_common rabbit
DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

elixir_srcs := mix.exs
app:: $(elixir_srcs) deps
	$(MIX) deps.get
	$(MIX) deps.compile
	$(MIX) compile

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk

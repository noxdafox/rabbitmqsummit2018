defmodule RabbitMQ.HelloWorldPlugin do
  Module.register_attribute __MODULE__,
    :rabbit_boot_step,
    accumulate: true, persist: true

  @rabbit_boot_step {__MODULE__,
                     [description: "hello world rabbitmq plugin",
                      mfa: {__MODULE__, :hello_world, []},
                      requires: :notify_cluster]}

  def hello_world() do
    IO.puts("Hello World!")
  end
end

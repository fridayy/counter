defmodule Counter.Server do
  @moduledoc """
  Boundary Layer - simple GenSever like state machine
  """
  @spec run(number) :: no_return
  def run(count) do
    # do something
    new_count = listen(count)
    run(new_count)
  end

  @spec listen(number) :: number
  def listen(count) do
    receive do
      {:inc, _pid} -> Counter.Core.inc(count)
      {:count, pid} ->
        send(pid, {:count, count})
        count
    end

  end
end

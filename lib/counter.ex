defmodule Counter do
  @moduledoc """
  Bootstraps the demystified "GenServer" Counter.Server
  """

  @doc """
  Starts the server in a new erlang process
  """
  def bootstrap(initial_count) do
    spawn(fn() -> Counter.Server.run(initial_count) end)
  end

  @doc """
  Sends the count message to the server and waits (receives) for the response message
  """
  def count(pid) do
    send(pid, {:count, self()})
    receive do
      {:count, count} -> count
    end

  end

  @doc """
  sends an increment message to the server
  """
  def inc(pid) do
    send(pid, {:inc, self()})
  end
end

defmodule CounterTest do
  use ExUnit.Case

  test "increments and receives" do
    pid = Counter.bootstrap(1)
    Counter.inc(pid)
    assert Counter.count(pid) == 2
  end

end

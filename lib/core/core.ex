defmodule Counter.Core do
  @moduledoc """
  Functional Layer
  """

  @doc ~S"""
  Increments the given number. Plain and simple.

  ## Examples

    iex> Counter.Core.inc(1)
    2

  """
  def inc(val) do
    val + 1
  end
  
end

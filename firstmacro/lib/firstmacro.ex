defmodule Firstmacro do
  @moduledoc """
  Documentation for `Firstmacro`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Firstmacro.hello()
      :world

  """
  def hello do
    :world
  end

  defmacro macro_inspect(value) do
    IO.inspect(value)
    value
  end

  def fun_inspect(value) do
    IO.inspect(value)
    value
  end
end

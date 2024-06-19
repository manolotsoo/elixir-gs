defmodule FirstmacroTest do
  use ExUnit.Case
  doctest Firstmacro

  test "greets the world" do
    assert Firstmacro.hello() == :world
  end
end

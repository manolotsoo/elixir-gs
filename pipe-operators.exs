defmodule PipeOperator do
  def exec() do
    "Hello world" |> String.capitalize() |> String.upcase() |> String.split()
  end
end

result = PipeOperator.exec()
IO.inspect(result)

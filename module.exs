defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

IO.inspect(Example.greeting("Paul"))

defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

IO.inspect(Example.Greetings.evening("Jany"))

defmodule Example.Attribute do
  @greeting "Bonjour"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end
IO.inspect(Example.Attribute.greeting("Todd"))

defmodule CustomModule.User do
  defstruct name: "Jean", roles: []
end

# Create a user instance
# tedd = %CustomModule.User{name: "Tedd"}


# ALIAS
defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule ExampleAlias do
  alias Sayings.Greetings, as: Gt

  def greeting(name), do: Gt.basic(name)
end

gTilt = ExampleAlias.greeting("Tilt")
IO.puts(gTilt)



defmodule ExampleMacro do
  def fun_inspect(value) do
    IO.inspect(value)
    value
  end
end

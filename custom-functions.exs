defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
end

defmodule GreeterOneLine do
  def customHello(name), do: "Custom Hello, " <> name
end

greetings = Greeter.hello("John")
IO.inspect(greetings)

customGreeting = GreeterOneLine.customHello("John")
IO.inspect(customGreeting)

defmodule CustomGreeter do
  def hello() do
    "Hello anonymous person"
  end

  def hello(name) do
    "Hello " <> name
  end

  def hello(first, second) do
    "Hello " <> first <> " and" <> second
  end
end

anonymousGreetings = CustomGreeter.hello()
onePersonGreetings = CustomGreeter.hello("John")
twoPersonGreetings = CustomGreeter.hello("Johnny", "Peter")
IO.puts("\nanonymous function")
IO.inspect(anonymousGreetings)
IO.puts("\none Person function")
IO.inspect(onePersonGreetings)
IO.puts("\ntwo Person function")
IO.inspect(twoPersonGreetings)



defmodule Greeeter do
  def hello(%{name: person_name}) do
    "Hello " <> person_name
  end
end

greeeterName = Greeeter.hello(%{name: "Jane"})
IO.puts("\nMap")
IO.inspect(greeeterName)

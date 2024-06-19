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

defmodule GreeterWithListAndBinaries do
  def hello(names) when is_list(names) do
    names = Enum.join(names, ", ")
    hello(names)
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "


  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names = Enum.join(names, ", ")

    hello(names, language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

listGreetings = ["Jane","John","White"]
gwlb = GreeterWithListAndBinaries.hello(listGreetings)
IO.puts("\nListGreetings")
IO.puts(gwlb)

# Internationalization
IO.puts("\nInternationalized")
gInt = GreeterWithListAndBinaries.hello(listGreetings,"es")
IO.puts(gInt)

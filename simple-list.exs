list = [3.14, :pie, "Apple"]
IO.inspect("List")
IO.inspect(list)
# Prepending (fast)
IO.puts("Prepend")
list = ["prepend" | list]
IO.inspect(list)
# Appending (fast)
IO.puts("Append")
list = list ++ ["pick"]
IO.inspect(list)

# List concatenation
firstList = [1,2]
IO.puts("firstList")
IO.inspect(firstList)
IO.puts("secondList")
secondList = ["list",20, 2]
IO.inspect(secondList)
thirdList = firstList ++ secondList
IO.puts("thirdList")
IO.inspect(thirdList)

# List substraction
IO.puts("List substraction")
substractList = secondList -- firstList
firstText = "apple banana cherry apple dog elephant frog grape apple banana cherry dog elephant frog grape"
firstListText = String.split(firstText, " ")
secondList = ["apple"]
# List substraction
IO.puts("First List ")
IO.inspect(firstListText)
# Second list
IO.puts("Second List ")
IO.inspect(secondList)

IO.puts("textSubstracted ")
textSubstracted = firstListText -- secondList

IO.inspect(textSubstracted)

head = hd [3.14, :pie, "Apple"]
tail = tl [3.14, :pie, "Apple"]

IO.puts("head ")
IO.inspect(head)
IO.puts("tail ")
IO.inspect(tail)

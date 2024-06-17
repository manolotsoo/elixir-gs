firstList = ["foo", "bar", "hello"]
lists = ["one","two","thr","three","four", "five"]
listNumber = [1,2,3,4,5,6,7,8,9]
listCoordinates = [%{x: 1, y: 1}, %{x: 2, y: 1}, %{x: 3, y: 3}]

# the entire collection must evaluate to true otherwise false will be returned
allTraitment = Enum.all?(firstList, fn(s) -> String.length(s) < 3 end)
# All Treatment
IO.puts("Treatments All ")
IO.inspect(allTraitment)

# Any Treatment
anyTraitment = Enum.any?(firstList, fn(s) -> String.length(s) > 4 end)
IO.puts("Treatments Any ")
IO.inspect(anyTraitment)

# chunk_every Treatment
chunkTraitment = Enum.chunk_every(lists, 3)
IO.puts("Treatments Chunk Every ")
IO.inspect(chunkTraitment)


# chunk_by Treatment
chunkBy = Enum.chunk_by(lists, fn(x) -> String.length(x) end)
IO.puts("Treatments Chunk Every ")
IO.inspect(chunkBy)

# chunk_by Treatment
chunkBy = Enum.chunk_by(lists, fn(x) -> String.length(x) end)
IO.puts("Treatments Chunk Every ")
IO.inspect(chunkBy)

# Apply function every three items
mapEvery = Enum.map_every(listNumber, 5, fn(x) -> x + 1000 end)
IO.puts("Treatments every ")
IO.inspect(mapEvery)

# Apply function each items
IO.puts("\n")
IO.puts("Treatments each ")
mapEach = Enum.each(lists ,fn(x) -> IO.puts(x) end)
IO.inspect(mapEach)

# Apply function reducer items
IO.puts("\n")
IO.puts("Treatments reducer ")
reduce = Enum.reduce(listNumber,10 ,fn(x, acc) -> x + acc end)
IO.inspect(reduce)

# Apply function uniqBy items
IO.puts("\nList coordinates")
IO.inspect(listCoordinates)
IO.puts("Treatments uniqBy ")
traitmentUniqBy = Enum.uniq_by(listCoordinates,fn(coord) -> coord.y end)
IO.inspect(traitmentUniqBy)

# Now we implement the capture operator (&); capturing each iterable of the list of numbers (listCoordinates) and assign each iterable to the variable &1 as it is passed through the mapping function.
IO.puts("\nList coordinates by capturing")
IO.inspect(listNumber)
IO.puts("Treatments map ")
traitmentListNumber = Enum.map(listNumber,&(&1 + 3))
IO.inspect(traitmentListNumber)

# This can be further refactored to assign the prior anonymous function featuring the Capture operator to a variable and called from the Enum.map/2 function.
IO.puts("anonymous function with named")
plus_three = &(&1 + 3)
traitment = Enum.map([1,2,3], plus_three)
IO.inspect(traitment)

defmodule Adding do
  def plus(number, step) do
    res = number + step
    Integer.to_string(res)
  end
end

# This can be further refactored to assign the prior anonymous function featuring the Capture operator to a variable and called from the Enum.map/2 function.
IO.puts("anonymous function with named adsasd")
traitmentWithNamed = Enum.map([1,2,3], &Adding.plus(&1, 6))
IO.inspect(traitmentWithNamed)
# No I need the type of number + step to Number

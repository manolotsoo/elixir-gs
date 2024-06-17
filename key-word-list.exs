IO.puts("KEYS")
keys = [foo: "bar", hello: "world", alpha: "test"]
IO.inspect(keys)

IO.puts("KEYS WITH BRQCKETS")
keysB = [{:foo, "bar"}, {:hello, "world"}]
IO.inspect(keysB)

IO.puts("KEYS SORTED")
# In this code snippet, 0 represents the index of the key in each tuple (since keyword lists are essentially lists of tuples).
keySort = List.keysort(keys,0)
IO.inspect(keySort)

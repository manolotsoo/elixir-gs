firstMap = %{:foo => "bar", "hello" => :world}
IO.inspect(firstMap[:foo])
# Convert a Key Map to WorldList
defmodule MyMap do
  def to_keyword_list(map) do
    Enum.map(map, fn {k, v} ->
      v =
        cond do
          is_map(v) -> to_keyword_list(v)
          true -> v
        end

      {String.to_existing_atom(to_string(k)), v}
    end)
  end

  def convert_to_map(kw_list) do
    Enum.into(kw_list, %{})
  end
end


map = %{:topic_id => "can't be blank", :created_by => "can't be blank"}
# Map to key Word
map_to_keyword_list = MyMap.to_keyword_list(map)
IO.inspect(map_to_keyword_list)

# Key word to Map
keyword_to_map = MyMap.convert_to_map(map_to_keyword_list)
IO.inspect(keyword_to_map)

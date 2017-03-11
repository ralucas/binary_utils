defmodule BinaryUtils do

  def binary_to_decimal(bin_string) do
    {_, result} = bin_string 
      |> String.reverse
      |> String.codepoints
      |> Enum.map(fn(s) -> String.to_integer(s) end)
      |> Enum.with_index
      |> Enum.map_reduce(0, fn({bit, index}, acc) -> {bit, (bit * :math.pow(2, index)) + acc} end)
    result
  end

end

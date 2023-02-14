defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  def do_sum(a, b) do
    a + b
  end

  def zero?(0), do: true

  def zero?(x) when is_integer(x), do: false

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end


end

IO.puts Math.sum(1,2)
IO.puts Math.do_sum(1,2)

IO.puts Math.zero?(0)
IO.puts Math.zero?(1)
#IO.puts Math.zero?([1,2,3])
#IO.puts Math.zero?(0.0)

IO.puts Math.sum_list([1,2,3], 0)
IO.puts Math.sum_list([1,2,3], 2)

IO.puts Math.double_each([1,2,3,4,5])

#iex> Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end) #=> 6
#iex> Enum.map([1, 2, 3], fn(x) -> x * 2 end) #=> [2, 4, 6]

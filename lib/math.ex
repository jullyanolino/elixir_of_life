defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

defp do_sum(a1, b1)
  a1 + b1
end

IO.puts Math.sum(1,2)
IO.puts Math.do_sum(1,2)

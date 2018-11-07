#Creating a function that maps and sums the results to one figure
defmodule MyList do
  def map([], func) do
    []
  end

  def map([h | t], func) do
    [func.(h) | map(t, func)]
  end

  def sum([], fun) do
    0
  end

  def sum([h | t], fun) do
    sum(t, fun.(h + 0), fun)
  end

  def mapsum([], func) do
    0
  end

  def mapsum([h | t], func) do
    map.([h | t], func) |> sum.()
  end
end

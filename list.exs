defmodule Sort do
  def max([first | [second | []]]) do
    smaller(first, second)
  end

  def max([first | [second | tail]]) do
      max[smaller(first, second) | tail]
  end

  def large(e1, e2) do
    if e1 > e2 do e1 else e2 end
  end
end

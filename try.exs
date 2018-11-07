
defmodule AddChar do
  def caesar([], n) when is_integer(n) do
    raise "We cannot add an integer to the list"
  end

  def caesar([h | t], n) when n < "z" do
    [h ++ n | caesar(t)]
  end
end

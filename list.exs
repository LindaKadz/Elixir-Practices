defmodule Sort do
  def find_max([], current) do
     current
  end

  def find_max([h | t], current) when h > current do
    find_max(t, h)
  end

  def find_max([_h | t], current) do
    find_max(t, current)
  end

  def max(list = [h | t]) do
     find_max(list, h)
  end
end

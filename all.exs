defmodule Titi do
  def all([], _func) do
    true
  end

  def all([h | t], func) do
    [func.(h) | all?(t, func)]
  end

  def check_true([], acc) do
    acc
  end

  def check_true([h | t], acc) do
    check_true(t, h && acc)
  end

  def all?(list, con) do
    all(list, con) |> check_true(true)
  end 
end

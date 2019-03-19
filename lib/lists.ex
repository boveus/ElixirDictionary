defmodule Lists do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def sum([]), do: 0
  def sum([_head | tail]), do: _head + sum(tail)
end

defmodule Lists do
  def len([]), do: 0
  def len([head | tail]), do: 1 + len(tail)

  def sum([]), do: 0
  def sum([_head | tail]), do: _head + sum(tail)

  def double([]), do: []
  def double([head | tail]), do: [ 2*head | double(tail) ]

  def square([]), do: []
  def square([head | tail]), do: [ head * head | square(tail) ]
end

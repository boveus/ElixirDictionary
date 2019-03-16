defmodule Dictionary do
  def word_list do
    "assets/words.txt"
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word() do
    word_list()
    |> Enum.random()
  end

  def replace_cat(string) do
    string
    |> String.replace(~r/cat/ , "dog")
    |> IO.puts
  end

  def find_word_regex(letter, word_count, letter_location) do
    1..word_count
    |> Enum.to_list
    |> Enum.flat_map(fn number ->
      if number !== letter_location do
        ["."]
      else
        [number]
      end
    end)
    |> Enum.join
    |> IO.puts
  end

  def find_word_by_letter(letter, word_count, letter_location) do
    word_list()
    |> Enum.find(fn word -> word ~= ~r/a/)
  end
end

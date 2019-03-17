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
    |> String.replace(~r/cat/, "dog")
    |> IO.puts
  end

  def wrap_for_regex(string) do
    ~r/#{string}/
  end
end

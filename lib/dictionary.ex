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

  def number_is_letter?(locations, number) do
    locations
    |> Enum.member?(number)
  end

  def retrieve_letter(letters,locations, number) do
    locations
    |> Enum.find_index(fn location -> location == number end)
    # enum at last line
    |> Enum.at(letters, letter_index(locations, number))
  end

  def word_regex(word_count, letters, locations) do
    1..word_count
    |> Enum.to_list
    |> Enum.flat_map(fn number ->
      if number_is_letter?(locations, number) do
        [retrieve_letter(letters, locations, number)]
      else
        ["."]
      end
    end)
    |> Enum.join
    |> wrap_for_regex()
  end

  def find_word_by_letter(word_count, letters, locations) do
    word_list()
    |> Enum.find(fn word ->
      String.match?(word, word_regex(word_count, letters, locations))
     end)
  end
end

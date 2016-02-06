defmodule MADLIBS.Prompt do
  def request_values_message do
    "Enter values for the following [separate with a ',']\n" <>
    "Proper Noun:\n"<>
    "Plural Noun:\n"<>
    "Number:\n"<>
    "Number:\n"<>
    "Number:\n"<>
    "Verb:\n"<>
    "Adverb:\n"<>
    "Verb:\n"<>
    "Noun:\n"
  end

  def request_values do
    IO.gets(request_values_message)
  end

  def display_madlib(madlib) do
    IO.puts(madlib)
  end

  def replay_question do
    IO.gets("Do you want to play again? Yes or No?")
  end

  def say_goodbye do
    IO.puts("Goodbye!")
  end
end

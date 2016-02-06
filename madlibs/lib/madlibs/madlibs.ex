defmodule MADLIBS.MadLibs do
  def parse_values(values) do 
    String.split(values, ",")
    |> Enum.map(&String.strip/1)
    |> List.to_tuple
  end

  def create_madlib_from_values(values) do
    { noun1, plural_noun, num1, num2, num3, verb1, adverb, verb2, noun2 } = values

    script = "These are the release #{noun1} for #{plural_noun} version #{num1}.#{num2}.#{num3}. #{verb1} them #{adverb}, as they tell you what this is all about, tell how to #{verb2} the #{noun2}, and what to do if something goes wrong."
  end

  def play_madlibs do
    MADLIBS.Prompt.display_madlib(create_madlib_from_values(parse_values(MADLIBS.Prompt.request_values)))  
  end
end

defmodule PromptTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "get user request string" do
    assert MADLIBS.Prompt.request_values_message == "Enter values for the following [separate with a ',']\n" <>
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

  test "get user for all elements of madlib" do
    fun = fn ->
      input = MADLIBS.Prompt.request_values
      IO.write(input)
    end

    assert capture_io([input: "Oxfam, cats, 9, 8, 7, eat, heavily, walk, apple", capture_prompt: false], fun) == "Oxfam, cats, 9, 8, 7, eat, heavily, walk, apple"
  end

  test "display madlib result to prompt" do
    fun = fn ->
      MADLIBS.Prompt.display_madlib("This is a really rubbish madlib")
    end

    assert capture_io(fun) == "This is a really rubbish madlib\n"
  end

  test "answer yes to replay question" do
    fun = fn ->
      input = MADLIBS.Prompt.replay_question
      IO.write(input)
    end

    assert capture_io([input: "Yes", capture_prompt: false], fun) == "Yes"

  end
end

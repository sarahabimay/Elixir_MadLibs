defmodule MadLibsTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "parse user input" do 
    assert MADLIBS.MadLibs.parse_values("A, B, C") == { "A", "B", "C" } 
  end

  test "compile the madlib from user inputs" do
    assert MADLIBS.MadLibs.create_madlib_from_values({ "A", "B", "C", "D", "E", "F", "G", "H", "I" }) == "These are the release A for B version C.D.E. F them G, as they tell you what this is all about, tell how to H the I, and what to do if something goes wrong."
  end

  test "play the game until quit" do
    fun = fn ->
      input = MADLIBS.MadLibs.play_madlibs
      IO.write(input)
    end

    assert capture_io([input: "A, B, C, D, E, F, G, H, I", capture_prompt: false], fun) == "These are the release A for B version C.D.E. F them G, as they tell you what this is all about, tell how to H the I, and what to do if something goes wrong.\nok"

  end
end

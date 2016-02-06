defmodule InputParserTest do
  use ExUnit.Case

  test "convert yes replay response to 1" do
    assert MADLIBS.InputParser.convert_replay("Yes") == 1
  end

  test "convert Not replay response to 2" do
    assert MADLIBS.InputParser.convert_replay("NO") == 2
  end
end

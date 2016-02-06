defmodule MADLIBS.Builder do
  use ExUnit.Case, async: true

  test "add grammatical term and value" do
    {:ok, buffer} = MADLIBS.Builder.start_link
    assert MADLIBS.Builder.put(builder, "noun", "milk") == :ok 
  end

end

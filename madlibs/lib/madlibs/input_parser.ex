defmodule MADLIBS.InputParser do
  def convert_replay(replay_choice) do
    case{String.downcase(replay_choice)} do
      {"yes"} ->
        1
      {"no"} ->
        2
    end
  end
end

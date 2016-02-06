defmodule MADLIBS.Builder do
  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  def put do
  end
end

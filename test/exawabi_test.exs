defmodule ExawabiTest do
  use ExUnit.Case
  doctest Exawabi

  test "greets the world" do
    assert Exawabi.hello() == :world
  end
end

defmodule ExAwabiTest do
  use ExUnit.Case
  doctest ExAwabi

  test "tokenize" do
    assert ExAwabi.tokenize("すもももももももものうち") == :world
  end
end

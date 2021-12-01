defmodule HelloCachexTest do
  use ExUnit.Case
  doctest HelloCachex

  test "greets the world" do
    assert HelloCachex.hello() == :world
  end
end

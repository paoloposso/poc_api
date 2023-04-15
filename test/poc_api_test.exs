defmodule PocApiTest do
  use ExUnit.Case
  doctest PocApi

  test "greets the world" do
    assert PocApi.hello() == :world
  end
end

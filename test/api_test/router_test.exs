defmodule ApiTest.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts PocApi.Router.init([])

  test "GET / return OK" do
    conn = conn(:get, "/")
    conn = PocApi.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "OK"
  end
end

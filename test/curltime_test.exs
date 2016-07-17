defmodule CurltimeTest do
  use ExUnit.Case
  doctest Curltime

  test "all curl options" do
    assert Curltime.time_namelookup("http://sergiotapia.me") != nil
    assert Curltime.time_connect("http://sergiotapia.me") != nil
    assert Curltime.time_appconnect("http://sergiotapia.me") != nil
    assert Curltime.time_pretransfer("http://sergiotapia.me") != nil
    assert Curltime.time_redirect("http://sergiotapia.me") != nil
    assert Curltime.time_starttransfer("http://sergiotapia.me") != nil
    assert Curltime.time_total("http://sergiotapia.me") != nil
  end
end

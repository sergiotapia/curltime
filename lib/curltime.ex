defmodule Curltime do
  def time_namelookup(url) do
    command(url, "time_namelookup")
  end

  def time_connect(url) do
    command(url, "time_connect")
  end

  def time_appconnect(url) do
    command(url, "time_appconnect")
  end

  def time_pretransfer(url) do
    command(url, "time_pretransfer")
  end

  def time_redirect(url) do
    command(url, "time_redirect")
  end

  def time_starttransfer(url) do
    command(url, "time_starttransfer")
  end

  def time_total(url) do
    command(url, "time_total")
  end

  def command(url, measurement) do
    args = ["-w", "@lib/curl-format.txt", "-o", "/dev/null", "-s", url]
    {result, _} = System.cmd("curl", args, [])
    values = result |> String.split(",")
    case measurement do
      "time_namelookup" -> Enum.at(values, 0)
      "time_connect" -> Enum.at(values, 1)
      "time_appconnect" -> Enum.at(values, 2)
      "time_pretransfer" -> Enum.at(values, 3)
      "time_redirect" -> Enum.at(values, 4)
      "time_starttransfer" -> Enum.at(values, 5)
      "time_total" -> Enum.at(values, 6)
      _ -> -1
    end
  end
end

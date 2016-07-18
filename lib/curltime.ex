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
    args = ["-w", "%{time_namelookup}, %{time_connect}, %{time_appconnect}, %{time_pretransfer}, %{time_redirect}, %{time_starttransfer}, %{time_total}", "-o", "/dev/null", "-s", url]
    {result, _} = System.cmd("curl", args, [])
    values = result |> String.split(",")
    case measurement do
      "time_namelookup" -> Enum.at(values, 0) |> String.trim
      "time_connect" -> Enum.at(values, 1) |> String.trim
      "time_appconnect" -> Enum.at(values, 2) |> String.trim
      "time_pretransfer" -> Enum.at(values, 3) |> String.trim
      "time_redirect" -> Enum.at(values, 4) |> String.trim
      "time_starttransfer" -> Enum.at(values, 5) |> String.trim
      "time_total" -> Enum.at(values, 6) |> String.trim
      _ -> "-1"
    end
  end
end

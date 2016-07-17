# curltime

curltime is an Elixir package allows you to easily get website response times.

## Installation

The package can be installed as:

  1. Add `curltime` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:curltime, "~> 1.0"}]
    end
    ```

## Usage

Easily fetch the response times of any website or resource.

```
Curltime.time_namelookup("http://sergiotapia.me")
Curltime.time_connect("http://sergiotapia.me")
Curltime.time_appconnect("http://sergiotapia.me")
Curltime.time_pretransfer("http://sergiotapia.me")
Curltime.time_redirect("http://sergiotapia.me")
Curltime.time_starttransfer("http://sergiotapia.me")
Curltime.time_total("http://sergiotapia.me")
```

# OpenWeather

A simple, [openweathermap](openweathermap.org) API wrapper written in Elixir.


### Setup
```elixir
$ mix deps.get
```

Usage:

1. Create an openweather account at https://home.openweathermap.org/users/sign_up.
2. Make a copy of the .env-example `cp .env.example .env`.
2. Set your `OPENWEATHER_APPID` env var to your new openweather API key.
3. Run OpenWeather.

```elixir
$ souce .env

$ iex -S mix
> OpenWeather.city('Accra')
{"coord":{"lon":-0.21,"lat":5.56},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"base":"stations","main":{"temp":299.15,"pressure":1010,"humidity":94,"temp_min":299.15,"temp_max":299.15},"visibility":8000,"wind":{"speed":3.1,"deg":270},"clouds":{"all":20},"dt":1576045949,"sys":{"type":1,"id":1126,"country":"GH","sunrise":1576043992,"sunset":1576086492},"timezone":0,"id":2306104,"name":"Accra","cod":200}
:ok
```
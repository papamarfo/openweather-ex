defmodule OpenWeather do

  @apikey System.get_env("OPENWEATHER_APPID")

  @moduledoc """
  Documentation for OpenWeather.
  """

  @doc """
  Display weather by city.

  ## Examples

    iex> OpenWeather.city('Accra')

    {"coord":{"lon":-0.21,"lat":5.56},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"base":"stations","main":{"temp":299.15,"pressure":1010,"humidity":94,"temp_min":299.15,"temp_max":299.15},"visibility":8000,"wind":{"speed":3.1,"deg":270},"clouds":{"all":20},"dt":1576045949,"sys":{"type":1,"id":1126,"country":"GH","sunrise":1576043992,"sunset":1576086492},"timezone":0,"id":2306104,"name":"Accra","cod":200}
    :ok
  """
  def city(city) do

    url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{@apikey}"

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end
  end
end
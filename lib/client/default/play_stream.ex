defmodule PlayfabEx.Client.Default.PlayStream do

  @doc """
  List all segments that a player currently belongs to at this moment in time.

  @link https://api.playfab.com/documentation/client/method/GetPlayerSegments
  """
  @spec get_player_segments(map()) :: {:ok, map} | {:error, String.t}
  def get_player_segments(params) do
    fetch("Client/GetPlayerSegments", params)
  end

  @doc """
  Get all tags with a given Namespace (optional) from a player profile.

  @link https://api.playfab.com/documentation/client/method/GetPlayerTags
  """
  @spec get_player_tags(map()) :: {:ok, map} | {:error, String.t}
  def get_player_tags(params) do
    fetch("Client/GetPlayerTags", params)
  end

  defp fetch(path, params) do
    string_params = Poison.encode!(params)
    try do
      response = Tesla.post("https://#{title_id()}.playfabapi.com/#{path}", string_params, headers: %{"Content-Type" => "application/json", "X-SecretKey" => secret_key()})
      |> Map.get(:body)
      |> Poison.decode!
      {:ok, response}
    rescue
      _ -> {:error, "Unable to fetch data from playfab"}
    end
  end

  defp title_id() do
    Application.get_env(:playfab_ex, :title_id)
  end

  defp secret_key() do
    Application.get_env(:playfab_ex, :secret_key)
  end
    
end
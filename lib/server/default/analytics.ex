defmodule PlayfabEx.Server.Default.Analytics do

  @doc """
  Writes a character-based event into PlayStream.

  @link https://api.playfab.com/documentation/server/method/WriteCharacterEvent
  """
  @spec write_character_event(map()) :: {:ok, map} | {:error, String.t}
  def write_character_event(params) do
    fetch("Server/WriteCharacterEvent", params)
  end

  @doc """
  Writes a player-based event into PlayStream.

  @link https://api.playfab.com/documentation/server/method/WritePlayerEvent
  """
  @spec write_player_event(map()) :: {:ok, map} | {:error, String.t}
  def write_player_event(params) do
    fetch("Server/WritePlayerEvent", params)
  end

  @doc """
  Writes a title-based event into PlayStream.

  @link https://api.playfab.com/documentation/server/method/WriteTitleEvent
  """
  @spec write_title_event(map()) :: {:ok, map} | {:error, String.t}
  def write_title_event(params) do
    fetch("Server/WriteTitleEvent", params)
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
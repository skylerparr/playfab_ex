defmodule PlayfabEx.Client.Default.Analytics do

  @doc """
  Write a PlayStream event to describe the provided player device information. This API method is not designed to be called directly by developers. Each PlayFab client SDK will eventually report this information automatically.

  @link https://api.playfab.com/documentation/client/method/ReportDeviceInfo
  """
  @spec report_device_info(map()) :: {:ok, map} | {:error, String.t}
  def report_device_info(params) do
    fetch("Client/ReportDeviceInfo", params)
  end

  @doc """
  Writes a character-based event into PlayStream.

  @link https://api.playfab.com/documentation/client/method/WriteCharacterEvent
  """
  @spec write_character_event(map()) :: {:ok, map} | {:error, String.t}
  def write_character_event(params) do
    fetch("Client/WriteCharacterEvent", params)
  end

  @doc """
  Writes a player-based event into PlayStream.

  @link https://api.playfab.com/documentation/client/method/WritePlayerEvent
  """
  @spec write_player_event(map()) :: {:ok, map} | {:error, String.t}
  def write_player_event(params) do
    fetch("Client/WritePlayerEvent", params)
  end

  @doc """
  Writes a title-based event into PlayStream.

  @link https://api.playfab.com/documentation/client/method/WriteTitleEvent
  """
  @spec write_title_event(map()) :: {:ok, map} | {:error, String.t}
  def write_title_event(params) do
    fetch("Client/WriteTitleEvent", params)
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
defmodule PlayfabEx.Admin.Default.Matchmaking do

  @doc """
  Retrieves the details for a specific completed session, including links to standard out and standard error logs

  @link https://api.playfab.com/documentation/admin/method/GetMatchmakerGameInfo
  """
  @spec get_matchmaker_game_info(map()) :: {:ok, map} | {:error, String.t}
  def get_matchmaker_game_info(params) do
    fetch("Admin/GetMatchmakerGameInfo", params)
  end

  @doc """
  Retrieves the details of defined game modes for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/GetMatchmakerGameModes
  """
  @spec get_matchmaker_game_modes(map()) :: {:ok, map} | {:error, String.t}
  def get_matchmaker_game_modes(params) do
    fetch("Admin/GetMatchmakerGameModes", params)
  end

  @doc """
  Updates the game server mode details for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/ModifyMatchmakerGameModes
  """
  @spec modify_matchmaker_game_modes(map()) :: {:ok, map} | {:error, String.t}
  def modify_matchmaker_game_modes(params) do
    fetch("Admin/ModifyMatchmakerGameModes", params)
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
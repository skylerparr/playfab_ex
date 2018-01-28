defmodule PlayfabEx.Client.Default.Matchmaking do

  @doc """
  Get details about all current running game servers matching the given parameters.

  @link https://api.playfab.com/documentation/client/method/GetCurrentGames
  """
  @spec get_current_games(map()) :: {:ok, map} | {:error, String.t}
  def get_current_games(params) do
    fetch("Client/GetCurrentGames", params)
  end

  @doc """
  Get details about the regions hosting game servers matching the given parameters.

  @link https://api.playfab.com/documentation/client/method/GetGameServerRegions
  """
  @spec get_game_server_regions(map()) :: {:ok, map} | {:error, String.t}
  def get_game_server_regions(params) do
    fetch("Client/GetGameServerRegions", params)
  end

  @doc """
  Attempts to locate a game session matching the given parameters. If the goal is to match the player into a specific active session, only the LobbyId is required. Otherwise, the BuildVersion, GameMode, and Region are all required parameters. Note that parameters specified in the search are required (they are not weighting factors). If a slot is found in a server instance matching the parameters, the slot will be assigned to that player, removing it from the availabe set. In that case, the information on the game session will be returned, otherwise the Status returned will be GameNotFound.

  @link https://api.playfab.com/documentation/client/method/Matchmake
  """
  @spec matchmake(map()) :: {:ok, map} | {:error, String.t}
  def matchmake(params) do
    fetch("Client/Matchmake", params)
  end

  @doc """
  Start a new game server with a given configuration, add the current player and return the connection information.

  @link https://api.playfab.com/documentation/client/method/StartGame
  """
  @spec start_game(map()) :: {:ok, map} | {:error, String.t}
  def start_game(params) do
    fetch("Client/StartGame", params)
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
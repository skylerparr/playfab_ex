defmodule PlayfabEx.Client.Matchmaking do
  use Interface

  @doc """
  Get details about all current running game servers matching the given parameters.

  [online docs](https://api.playfab.com/documentation/client/method/GetCurrentGames)
  """
  @spec get_current_games(map()) :: {:ok, map} | {:error, String.t}
  definterface get_current_games(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Matchmaking) || PlayfabEx.Client.Default.Matchmaking)
  

  @doc """
  Get details about the regions hosting game servers matching the given parameters.

  [online docs](https://api.playfab.com/documentation/client/method/GetGameServerRegions)
  """
  @spec get_game_server_regions(map()) :: {:ok, map} | {:error, String.t}
  definterface get_game_server_regions(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Matchmaking) || PlayfabEx.Client.Default.Matchmaking)
  

  @doc """
  Attempts to locate a game session matching the given parameters. If the goal is to match the player into a specific active session, only the LobbyId is required. Otherwise, the BuildVersion, GameMode, and Region are all required parameters. Note that parameters specified in the search are required (they are not weighting factors). If a slot is found in a server instance matching the parameters, the slot will be assigned to that player, removing it from the availabe set. In that case, the information on the game session will be returned, otherwise the Status returned will be GameNotFound.

  [online docs](https://api.playfab.com/documentation/client/method/Matchmake)
  """
  @spec matchmake(map()) :: {:ok, map} | {:error, String.t}
  definterface matchmake(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Matchmaking) || PlayfabEx.Client.Default.Matchmaking)
  

  @doc """
  Start a new game server with a given configuration, add the current player and return the connection information.

  [online docs](https://api.playfab.com/documentation/client/method/StartGame)
  """
  @spec start_game(map()) :: {:ok, map} | {:error, String.t}
  definterface start_game(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Matchmaking) || PlayfabEx.Client.Default.Matchmaking)
  
end
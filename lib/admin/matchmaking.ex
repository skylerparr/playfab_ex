defmodule PlayfabEx.Admin.Matchmaking do
  use Interface

  @doc """
  Retrieves the details for a specific completed session, including links to standard out and standard error logs

  @link https://api.playfab.com/documentation/admin/method/GetMatchmakerGameInfo
  """
  @spec get_matchmaker_game_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_matchmaker_game_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Matchmaking) || PlayfabEx.Admin.Default.Matchmaking)
  

  @doc """
  Retrieves the details of defined game modes for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/GetMatchmakerGameModes
  """
  @spec get_matchmaker_game_modes(map()) :: {:ok, map} | {:error, String.t}
  definterface get_matchmaker_game_modes(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Matchmaking) || PlayfabEx.Admin.Default.Matchmaking)
  

  @doc """
  Updates the game server mode details for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/ModifyMatchmakerGameModes
  """
  @spec modify_matchmaker_game_modes(map()) :: {:ok, map} | {:error, String.t}
  definterface modify_matchmaker_game_modes(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Matchmaking) || PlayfabEx.Admin.Default.Matchmaking)
  
end
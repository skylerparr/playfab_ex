defmodule PlayfabEx.Matchmaker.Matchmaking do
  use Interface

  @doc """
  Validates a user with the PlayFab service

  @link https://api.playfab.com/documentation/matchmaker/method/AuthUser
  """
  @spec auth_user(map()) :: {:ok, map} | {:error, String.t}
  definterface auth_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Matchmaker.Matchmaking) || PlayfabEx.Matchmaker.Default.Matchmaking)
  

  @doc """
  Informs the PlayFab game server hosting service that the indicated user has joined the Game Server Instance specified

  @link https://api.playfab.com/documentation/matchmaker/method/PlayerJoined
  """
  @spec player_joined(map()) :: {:ok, map} | {:error, String.t}
  definterface player_joined(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Matchmaker.Matchmaking) || PlayfabEx.Matchmaker.Default.Matchmaking)
  

  @doc """
  Informs the PlayFab game server hosting service that the indicated user has left the Game Server Instance specified

  @link https://api.playfab.com/documentation/matchmaker/method/PlayerLeft
  """
  @spec player_left(map()) :: {:ok, map} | {:error, String.t}
  definterface player_left(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Matchmaker.Matchmaking) || PlayfabEx.Matchmaker.Default.Matchmaking)
  

  @doc """
  Instructs the PlayFab game server hosting service to instantiate a new Game Server Instance

  @link https://api.playfab.com/documentation/matchmaker/method/StartGame
  """
  @spec start_game(map()) :: {:ok, map} | {:error, String.t}
  definterface start_game(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Matchmaker.Matchmaking) || PlayfabEx.Matchmaker.Default.Matchmaking)
  

  @doc """
  Retrieves the relevant details for a specified user, which the external match-making service can then use to compute effective matches

  @link https://api.playfab.com/documentation/matchmaker/method/UserInfo
  """
  @spec user_info(map()) :: {:ok, map} | {:error, String.t}
  definterface user_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Matchmaker.Matchmaking) || PlayfabEx.Matchmaker.Default.Matchmaking)
  
end
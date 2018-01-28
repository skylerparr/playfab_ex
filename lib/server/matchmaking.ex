defmodule PlayfabEx.Server.Matchmaking do
  use Interface

  @doc """
  Inform the matchmaker that a Game Server Instance is removed.

  @link https://api.playfab.com/documentation/server/method/DeregisterGame
  """
  @spec deregister_game(map()) :: {:ok, map} | {:error, String.t}
  definterface deregister_game(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Informs the PlayFab match-making service that the user specified has left the Game Server Instance

  @link https://api.playfab.com/documentation/server/method/NotifyMatchmakerPlayerLeft
  """
  @spec notify_matchmaker_player_left(map()) :: {:ok, map} | {:error, String.t}
  definterface notify_matchmaker_player_left(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Validates a Game Server session ticket and returns details about the user

  @link https://api.playfab.com/documentation/server/method/RedeemMatchmakerTicket
  """
  @spec redeem_matchmaker_ticket(map()) :: {:ok, map} | {:error, String.t}
  definterface redeem_matchmaker_ticket(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Set the state of the indicated Game Server Instance. Also update the heartbeat for the instance.

  @link https://api.playfab.com/documentation/server/method/RefreshGameServerInstanceHeartbeat
  """
  @spec refresh_game_server_instance_heartbeat(map()) :: {:ok, map} | {:error, String.t}
  definterface refresh_game_server_instance_heartbeat(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Inform the matchmaker that a new Game Server Instance is added.

  @link https://api.playfab.com/documentation/server/method/RegisterGame
  """
  @spec register_game(map()) :: {:ok, map} | {:error, String.t}
  definterface register_game(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Sets the custom data of the indicated Game Server Instance

  @link https://api.playfab.com/documentation/server/method/SetGameServerInstanceData
  """
  @spec set_game_server_instance_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_game_server_instance_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Set the state of the indicated Game Server Instance.

  @link https://api.playfab.com/documentation/server/method/SetGameServerInstanceState
  """
  @spec set_game_server_instance_state(map()) :: {:ok, map} | {:error, String.t}
  definterface set_game_server_instance_state(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  

  @doc """
  Set custom tags for the specified Game Server Instance

  @link https://api.playfab.com/documentation/server/method/SetGameServerInstanceTags
  """
  @spec set_game_server_instance_tags(map()) :: {:ok, map} | {:error, String.t}
  definterface set_game_server_instance_tags(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Matchmaking) || PlayfabEx.Server.Default.Matchmaking)
  
end
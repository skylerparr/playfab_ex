defmodule PlayfabEx.Server.Default.Matchmaking do

  @doc """
  Inform the matchmaker that a Game Server Instance is removed.

  @link https://api.playfab.com/documentation/server/method/DeregisterGame
  """
  @spec deregister_game(map()) :: {:ok, map} | {:error, String.t}
  def deregister_game(params) do
    fetch("Server/DeregisterGame", params)
  end

  @doc """
  Informs the PlayFab match-making service that the user specified has left the Game Server Instance

  @link https://api.playfab.com/documentation/server/method/NotifyMatchmakerPlayerLeft
  """
  @spec notify_matchmaker_player_left(map()) :: {:ok, map} | {:error, String.t}
  def notify_matchmaker_player_left(params) do
    fetch("Server/NotifyMatchmakerPlayerLeft", params)
  end

  @doc """
  Validates a Game Server session ticket and returns details about the user

  @link https://api.playfab.com/documentation/server/method/RedeemMatchmakerTicket
  """
  @spec redeem_matchmaker_ticket(map()) :: {:ok, map} | {:error, String.t}
  def redeem_matchmaker_ticket(params) do
    fetch("Server/RedeemMatchmakerTicket", params)
  end

  @doc """
  Set the state of the indicated Game Server Instance. Also update the heartbeat for the instance.

  @link https://api.playfab.com/documentation/server/method/RefreshGameServerInstanceHeartbeat
  """
  @spec refresh_game_server_instance_heartbeat(map()) :: {:ok, map} | {:error, String.t}
  def refresh_game_server_instance_heartbeat(params) do
    fetch("Server/RefreshGameServerInstanceHeartbeat", params)
  end

  @doc """
  Inform the matchmaker that a new Game Server Instance is added.

  @link https://api.playfab.com/documentation/server/method/RegisterGame
  """
  @spec register_game(map()) :: {:ok, map} | {:error, String.t}
  def register_game(params) do
    fetch("Server/RegisterGame", params)
  end

  @doc """
  Sets the custom data of the indicated Game Server Instance

  @link https://api.playfab.com/documentation/server/method/SetGameServerInstanceData
  """
  @spec set_game_server_instance_data(map()) :: {:ok, map} | {:error, String.t}
  def set_game_server_instance_data(params) do
    fetch("Server/SetGameServerInstanceData", params)
  end

  @doc """
  Set the state of the indicated Game Server Instance.

  @link https://api.playfab.com/documentation/server/method/SetGameServerInstanceState
  """
  @spec set_game_server_instance_state(map()) :: {:ok, map} | {:error, String.t}
  def set_game_server_instance_state(params) do
    fetch("Server/SetGameServerInstanceState", params)
  end

  @doc """
  Set custom tags for the specified Game Server Instance

  @link https://api.playfab.com/documentation/server/method/SetGameServerInstanceTags
  """
  @spec set_game_server_instance_tags(map()) :: {:ok, map} | {:error, String.t}
  def set_game_server_instance_tags(params) do
    fetch("Server/SetGameServerInstanceTags", params)
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
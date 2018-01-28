defmodule PlayfabEx.Matchmaker.Default.Matchmaking do

  @doc """
  Validates a user with the PlayFab service

  @link https://api.playfab.com/documentation/matchmaker/method/AuthUser
  """
  @spec auth_user(map()) :: {:ok, map} | {:error, String.t}
  def auth_user(params) do
    fetch("Matchmaker/AuthUser", params)
  end

  @doc """
  Informs the PlayFab game server hosting service that the indicated user has joined the Game Server Instance specified

  @link https://api.playfab.com/documentation/matchmaker/method/PlayerJoined
  """
  @spec player_joined(map()) :: {:ok, map} | {:error, String.t}
  def player_joined(params) do
    fetch("Matchmaker/PlayerJoined", params)
  end

  @doc """
  Informs the PlayFab game server hosting service that the indicated user has left the Game Server Instance specified

  @link https://api.playfab.com/documentation/matchmaker/method/PlayerLeft
  """
  @spec player_left(map()) :: {:ok, map} | {:error, String.t}
  def player_left(params) do
    fetch("Matchmaker/PlayerLeft", params)
  end

  @doc """
  Instructs the PlayFab game server hosting service to instantiate a new Game Server Instance

  @link https://api.playfab.com/documentation/matchmaker/method/StartGame
  """
  @spec start_game(map()) :: {:ok, map} | {:error, String.t}
  def start_game(params) do
    fetch("Matchmaker/StartGame", params)
  end

  @doc """
  Retrieves the relevant details for a specified user, which the external match-making service can then use to compute effective matches

  @link https://api.playfab.com/documentation/matchmaker/method/UserInfo
  """
  @spec user_info(map()) :: {:ok, map} | {:error, String.t}
  def user_info(params) do
    fetch("Matchmaker/UserInfo", params)
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
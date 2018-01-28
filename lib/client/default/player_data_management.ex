defmodule PlayfabEx.Client.Default.PlayerDataManagement do

  @doc """
  Retrieves a list of ranked friends of the current player for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/client/method/GetFriendLeaderboard
  """
  @spec get_friend_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  def get_friend_leaderboard(params) do
    fetch("Client/GetFriendLeaderboard", params)
  end

  @doc """
  Retrieves a list of ranked friends of the current player for the given statistic, centered on the requested PlayFab user. If PlayFabId is empty or null will return currently logged in user.

  @link https://api.playfab.com/documentation/client/method/GetFriendLeaderboardAroundPlayer
  """
  @spec get_friend_leaderboard_around_player(map()) :: {:ok, map} | {:error, String.t}
  def get_friend_leaderboard_around_player(params) do
    fetch("Client/GetFriendLeaderboardAroundPlayer", params)
  end

  @doc """
  Retrieves a list of ranked users for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/client/method/GetLeaderboard
  """
  @spec get_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  def get_leaderboard(params) do
    fetch("Client/GetLeaderboard", params)
  end

  @doc """
  Retrieves a list of ranked users for the given statistic, centered on the requested player. If PlayFabId is empty or null will return currently logged in user.

  @link https://api.playfab.com/documentation/client/method/GetLeaderboardAroundPlayer
  """
  @spec get_leaderboard_around_player(map()) :: {:ok, map} | {:error, String.t}
  def get_leaderboard_around_player(params) do
    fetch("Client/GetLeaderboardAroundPlayer", params)
  end

  @doc """
  Retrieves the indicated statistics (current version and values for all statistics, if none are specified), for the local player.

  @link https://api.playfab.com/documentation/client/method/GetPlayerStatistics
  """
  @spec get_player_statistics(map()) :: {:ok, map} | {:error, String.t}
  def get_player_statistics(params) do
    fetch("Client/GetPlayerStatistics", params)
  end

  @doc """
  Retrieves the information on the available versions of the specified statistic.

  @link https://api.playfab.com/documentation/client/method/GetPlayerStatisticVersions
  """
  @spec get_player_statistic_versions(map()) :: {:ok, map} | {:error, String.t}
  def get_player_statistic_versions(params) do
    fetch("Client/GetPlayerStatisticVersions", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/GetUserData
  """
  @spec get_user_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_data(params) do
    fetch("Client/GetUserData", params)
  end

  @doc """
  Retrieves the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/GetUserPublisherData
  """
  @spec get_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_publisher_data(params) do
    fetch("Client/GetUserPublisherData", params)
  end

  @doc """
  Retrieves the publisher-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/client/method/GetUserPublisherReadOnlyData
  """
  @spec get_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_publisher_read_only_data(params) do
    fetch("Client/GetUserPublisherReadOnlyData", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/client/method/GetUserReadOnlyData
  """
  @spec get_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_read_only_data(params) do
    fetch("Client/GetUserReadOnlyData", params)
  end

  @doc """
  Updates the values of the specified title-specific statistics for the user. By default, clients are not permitted to update statistics. Developers may override this setting in the Game Manager > Settings > API Features.

  @link https://api.playfab.com/documentation/client/method/UpdatePlayerStatistics
  """
  @spec update_player_statistics(map()) :: {:ok, map} | {:error, String.t}
  def update_player_statistics(params) do
    fetch("Client/UpdatePlayerStatistics", params)
  end

  @doc """
  Creates and updates the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/UpdateUserData
  """
  @spec update_user_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_data(params) do
    fetch("Client/UpdateUserData", params)
  end

  @doc """
  Creates and updates the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/UpdateUserPublisherData
  """
  @spec update_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_publisher_data(params) do
    fetch("Client/UpdateUserPublisherData", params)
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
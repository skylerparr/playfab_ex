defmodule PlayfabEx.Client.PlayerDataManagement do
  use Interface

  @doc """
  Retrieves a list of ranked friends of the current player for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/client/method/GetFriendLeaderboard
  """
  @spec get_friend_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  definterface get_friend_leaderboard(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a list of ranked friends of the current player for the given statistic, centered on the requested PlayFab user. If PlayFabId is empty or null will return currently logged in user.

  @link https://api.playfab.com/documentation/client/method/GetFriendLeaderboardAroundPlayer
  """
  @spec get_friend_leaderboard_around_player(map()) :: {:ok, map} | {:error, String.t}
  definterface get_friend_leaderboard_around_player(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a list of ranked users for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/client/method/GetLeaderboard
  """
  @spec get_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a list of ranked users for the given statistic, centered on the requested player. If PlayFabId is empty or null will return currently logged in user.

  @link https://api.playfab.com/documentation/client/method/GetLeaderboardAroundPlayer
  """
  @spec get_leaderboard_around_player(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard_around_player(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the indicated statistics (current version and values for all statistics, if none are specified), for the local player.

  @link https://api.playfab.com/documentation/client/method/GetPlayerStatistics
  """
  @spec get_player_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the information on the available versions of the specified statistic.

  @link https://api.playfab.com/documentation/client/method/GetPlayerStatisticVersions
  """
  @spec get_player_statistic_versions(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_statistic_versions(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/GetUserData
  """
  @spec get_user_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/GetUserPublisherData
  """
  @spec get_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/client/method/GetUserPublisherReadOnlyData
  """
  @spec get_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/client/method/GetUserReadOnlyData
  """
  @spec get_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Updates the values of the specified title-specific statistics for the user. By default, clients are not permitted to update statistics. Developers may override this setting in the Game Manager > Settings > API Features.

  @link https://api.playfab.com/documentation/client/method/UpdatePlayerStatistics
  """
  @spec update_player_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface update_player_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Creates and updates the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/UpdateUserData
  """
  @spec update_user_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  

  @doc """
  Creates and updates the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/UpdateUserPublisherData
  """
  @spec update_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayerDataManagement) || PlayfabEx.Client.Default.PlayerDataManagement)
  
end
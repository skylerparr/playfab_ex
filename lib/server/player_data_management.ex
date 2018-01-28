defmodule PlayfabEx.Server.PlayerDataManagement do
  use Interface

  @doc """
  Deletes the users for the provided game. Deletes custom data, all account linkages, and statistics.

  @link https://api.playfab.com/documentation/server/method/DeleteUsers
  """
  @spec delete_users(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_users(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a list of ranked friends of the given player for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/server/method/GetFriendLeaderboard
  """
  @spec get_friend_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  definterface get_friend_leaderboard(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a list of ranked users for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/server/method/GetLeaderboard
  """
  @spec get_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a list of ranked users for the given statistic, centered on the currently signed-in user

  @link https://api.playfab.com/documentation/server/method/GetLeaderboardAroundUser
  """
  @spec get_leaderboard_around_user(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard_around_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Returns whatever info is requested in the response for the user. Note that PII (like email address, facebook id)             may be returned. All parameters default to false.

  @link https://api.playfab.com/documentation/server/method/GetPlayerCombinedInfo
  """
  @spec get_player_combined_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_combined_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the current version and values for the indicated statistics, for the local player.

  @link https://api.playfab.com/documentation/server/method/GetPlayerStatistics
  """
  @spec get_player_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the information on the available versions of the specified statistic.

  @link https://api.playfab.com/documentation/server/method/GetPlayerStatisticVersions
  """
  @spec get_player_statistic_versions(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_statistic_versions(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/GetUserData
  """
  @spec get_user_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/server/method/GetUserInternalData
  """
  @spec get_user_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/GetUserPublisherData
  """
  @spec get_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/server/method/GetUserPublisherInternalData
  """
  @spec get_user_publisher_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/GetUserPublisherReadOnlyData
  """
  @spec get_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/GetUserReadOnlyData
  """
  @spec get_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the values of the specified title-specific statistics for the user

  @link https://api.playfab.com/documentation/server/method/UpdatePlayerStatistics
  """
  @spec update_player_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface update_player_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/UpdateUserData
  """
  @spec update_user_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the title-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/server/method/UpdateUserInternalData
  """
  @spec update_user_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/UpdateUserPublisherData
  """
  @spec update_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the publisher-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/server/method/UpdateUserPublisherInternalData
  """
  @spec update_user_publisher_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the publisher-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/UpdateUserPublisherReadOnlyData
  """
  @spec update_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  

  @doc """
  Updates the title-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/UpdateUserReadOnlyData
  """
  @spec update_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlayerDataManagement) || PlayfabEx.Server.Default.PlayerDataManagement)
  
end
defmodule PlayfabEx.Admin.PlayerDataManagement do
  use Interface

  @doc """
  Adds a new player statistic configuration to the title, optionally allowing the developer to specify a reset interval and an aggregation method.

  [online docs](https://api.playfab.com/documentation/admin/method/CreatePlayerStatisticDefinition)
  """
  @spec create_player_statistic_definition(map()) :: {:ok, map} | {:error, String.t}
  definterface create_player_statistic_definition(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves a download URL for the requested report

  [online docs](https://api.playfab.com/documentation/admin/method/GetDataReport)
  """
  @spec get_data_report(map()) :: {:ok, map} | {:error, String.t}
  definterface get_data_report(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the configuration information for all player statistics defined in the title, regardless of whether they have a reset interval.

  [online docs](https://api.playfab.com/documentation/admin/method/GetPlayerStatisticDefinitions)
  """
  @spec get_player_statistic_definitions(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_statistic_definitions(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the information on the available versions of the specified statistic.

  [online docs](https://api.playfab.com/documentation/admin/method/GetPlayerStatisticVersions)
  """
  @spec get_player_statistic_versions(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_statistic_versions(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserData)
  """
  @spec get_user_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which cannot be accessed by the client

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserInternalData)
  """
  @spec get_user_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which is readable and writable by the client

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserPublisherData)
  """
  @spec get_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which cannot be accessed by the client

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserPublisherInternalData)
  """
  @spec get_user_publisher_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the publisher-specific custom data for the user which can only be read by the client

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserPublisherReadOnlyData)
  """
  @spec get_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_publisher_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Retrieves the title-specific custom data for the user which can only be read by the client

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserReadOnlyData)
  """
  @spec get_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Resets the indicated statistic, removing all player entries for it and backing up the old values.

  [online docs](https://api.playfab.com/documentation/admin/method/IncrementPlayerStatisticVersion)
  """
  @spec increment_player_statistic_version(map()) :: {:ok, map} | {:error, String.t}
  definterface increment_player_statistic_version(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Attempts to process an order refund through the original real money payment provider.

  [online docs](https://api.playfab.com/documentation/admin/method/RefundPurchase)
  """
  @spec refund_purchase(map()) :: {:ok, map} | {:error, String.t}
  definterface refund_purchase(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Completely removes all statistics for the specified user, for the current game

  [online docs](https://api.playfab.com/documentation/admin/method/ResetUserStatistics)
  """
  @spec reset_user_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface reset_user_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Attempts to resolve a dispute with the original order's payment provider.

  [online docs](https://api.playfab.com/documentation/admin/method/ResolvePurchaseDispute)
  """
  @spec resolve_purchase_dispute(map()) :: {:ok, map} | {:error, String.t}
  definterface resolve_purchase_dispute(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates a player statistic configuration for the title, optionally allowing the developer to specify a reset interval.

  [online docs](https://api.playfab.com/documentation/admin/method/UpdatePlayerStatisticDefinition)
  """
  @spec update_player_statistic_definition(map()) :: {:ok, map} | {:error, String.t}
  definterface update_player_statistic_definition(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates the title-specific custom data for the user which is readable and writable by the client

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateUserData)
  """
  @spec update_user_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates the title-specific custom data for the user which cannot be accessed by the client

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateUserInternalData)
  """
  @spec update_user_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates the publisher-specific custom data for the user which is readable and writable by the client

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateUserPublisherData)
  """
  @spec update_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates the publisher-specific custom data for the user which cannot be accessed by the client

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateUserPublisherInternalData)
  """
  @spec update_user_publisher_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates the publisher-specific custom data for the user which can only be read by the client

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateUserPublisherReadOnlyData)
  """
  @spec update_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_publisher_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  

  @doc """
  Updates the title-specific custom data for the user which can only be read by the client

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateUserReadOnlyData)
  """
  @spec update_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerDataManagement) || PlayfabEx.Admin.Default.PlayerDataManagement)
  
end
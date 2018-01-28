defmodule PlayfabEx.Admin.Default.PlayerDataManagement do

  @doc """
  Adds a new player statistic configuration to the title, optionally allowing the developer to specify a reset interval and an aggregation method.

  @link https://api.playfab.com/documentation/admin/method/CreatePlayerStatisticDefinition
  """
  @spec create_player_statistic_definition(map()) :: {:ok, map} | {:error, String.t}
  def create_player_statistic_definition(params) do
    fetch("Admin/CreatePlayerStatisticDefinition", params)
  end

  @doc """
  Retrieves a download URL for the requested report

  @link https://api.playfab.com/documentation/admin/method/GetDataReport
  """
  @spec get_data_report(map()) :: {:ok, map} | {:error, String.t}
  def get_data_report(params) do
    fetch("Admin/GetDataReport", params)
  end

  @doc """
  Retrieves the configuration information for all player statistics defined in the title, regardless of whether they have a reset interval.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerStatisticDefinitions
  """
  @spec get_player_statistic_definitions(map()) :: {:ok, map} | {:error, String.t}
  def get_player_statistic_definitions(params) do
    fetch("Admin/GetPlayerStatisticDefinitions", params)
  end

  @doc """
  Retrieves the information on the available versions of the specified statistic.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerStatisticVersions
  """
  @spec get_player_statistic_versions(map()) :: {:ok, map} | {:error, String.t}
  def get_player_statistic_versions(params) do
    fetch("Admin/GetPlayerStatisticVersions", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/admin/method/GetUserData
  """
  @spec get_user_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_data(params) do
    fetch("Admin/GetUserData", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/admin/method/GetUserInternalData
  """
  @spec get_user_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_internal_data(params) do
    fetch("Admin/GetUserInternalData", params)
  end

  @doc """
  Retrieves the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/admin/method/GetUserPublisherData
  """
  @spec get_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_publisher_data(params) do
    fetch("Admin/GetUserPublisherData", params)
  end

  @doc """
  Retrieves the publisher-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/admin/method/GetUserPublisherInternalData
  """
  @spec get_user_publisher_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_publisher_internal_data(params) do
    fetch("Admin/GetUserPublisherInternalData", params)
  end

  @doc """
  Retrieves the publisher-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/admin/method/GetUserPublisherReadOnlyData
  """
  @spec get_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_publisher_read_only_data(params) do
    fetch("Admin/GetUserPublisherReadOnlyData", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/admin/method/GetUserReadOnlyData
  """
  @spec get_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def get_user_read_only_data(params) do
    fetch("Admin/GetUserReadOnlyData", params)
  end

  @doc """
  Resets the indicated statistic, removing all player entries for it and backing up the old values.

  @link https://api.playfab.com/documentation/admin/method/IncrementPlayerStatisticVersion
  """
  @spec increment_player_statistic_version(map()) :: {:ok, map} | {:error, String.t}
  def increment_player_statistic_version(params) do
    fetch("Admin/IncrementPlayerStatisticVersion", params)
  end

  @doc """
  Attempts to process an order refund through the original real money payment provider.

  @link https://api.playfab.com/documentation/admin/method/RefundPurchase
  """
  @spec refund_purchase(map()) :: {:ok, map} | {:error, String.t}
  def refund_purchase(params) do
    fetch("Admin/RefundPurchase", params)
  end

  @doc """
  Completely removes all statistics for the specified user, for the current game

  @link https://api.playfab.com/documentation/admin/method/ResetUserStatistics
  """
  @spec reset_user_statistics(map()) :: {:ok, map} | {:error, String.t}
  def reset_user_statistics(params) do
    fetch("Admin/ResetUserStatistics", params)
  end

  @doc """
  Attempts to resolve a dispute with the original order's payment provider.

  @link https://api.playfab.com/documentation/admin/method/ResolvePurchaseDispute
  """
  @spec resolve_purchase_dispute(map()) :: {:ok, map} | {:error, String.t}
  def resolve_purchase_dispute(params) do
    fetch("Admin/ResolvePurchaseDispute", params)
  end

  @doc """
  Updates a player statistic configuration for the title, optionally allowing the developer to specify a reset interval.

  @link https://api.playfab.com/documentation/admin/method/UpdatePlayerStatisticDefinition
  """
  @spec update_player_statistic_definition(map()) :: {:ok, map} | {:error, String.t}
  def update_player_statistic_definition(params) do
    fetch("Admin/UpdatePlayerStatisticDefinition", params)
  end

  @doc """
  Updates the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/admin/method/UpdateUserData
  """
  @spec update_user_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_data(params) do
    fetch("Admin/UpdateUserData", params)
  end

  @doc """
  Updates the title-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/admin/method/UpdateUserInternalData
  """
  @spec update_user_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_internal_data(params) do
    fetch("Admin/UpdateUserInternalData", params)
  end

  @doc """
  Updates the publisher-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/admin/method/UpdateUserPublisherData
  """
  @spec update_user_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_publisher_data(params) do
    fetch("Admin/UpdateUserPublisherData", params)
  end

  @doc """
  Updates the publisher-specific custom data for the user which cannot be accessed by the client

  @link https://api.playfab.com/documentation/admin/method/UpdateUserPublisherInternalData
  """
  @spec update_user_publisher_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_publisher_internal_data(params) do
    fetch("Admin/UpdateUserPublisherInternalData", params)
  end

  @doc """
  Updates the publisher-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/admin/method/UpdateUserPublisherReadOnlyData
  """
  @spec update_user_publisher_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_publisher_read_only_data(params) do
    fetch("Admin/UpdateUserPublisherReadOnlyData", params)
  end

  @doc """
  Updates the title-specific custom data for the user which can only be read by the client

  @link https://api.playfab.com/documentation/admin/method/UpdateUserReadOnlyData
  """
  @spec update_user_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_read_only_data(params) do
    fetch("Admin/UpdateUserReadOnlyData", params)
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
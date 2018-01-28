defmodule PlayfabEx.Admin.Default.TitleWideDataManagement do

  @doc """
  Adds a new news item to the title's news feed

  @link https://api.playfab.com/documentation/admin/method/AddNews
  """
  @spec add_news(map()) :: {:ok, map} | {:error, String.t}
  def add_news(params) do
    fetch("Admin/AddNews", params)
  end

  @doc """
  Adds one or more virtual currencies to the set defined for the title. Virtual Currencies have a maximum value of 2,147,483,647 when granted to a player. Any value over that will be discarded.

  @link https://api.playfab.com/documentation/admin/method/AddVirtualCurrencyTypes
  """
  @spec add_virtual_currency_types(map()) :: {:ok, map} | {:error, String.t}
  def add_virtual_currency_types(params) do
    fetch("Admin/AddVirtualCurrencyTypes", params)
  end

  @doc """
  Deletes an existing virtual item store

  @link https://api.playfab.com/documentation/admin/method/DeleteStore
  """
  @spec delete_store(map()) :: {:ok, map} | {:error, String.t}
  def delete_store(params) do
    fetch("Admin/DeleteStore", params)
  end

  @doc """
  Retrieves the specified version of the title's catalog of virtual goods, including all defined properties

  @link https://api.playfab.com/documentation/admin/method/GetCatalogItems
  """
  @spec get_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  def get_catalog_items(params) do
    fetch("Admin/GetCatalogItems", params)
  end

  @doc """
  Retrieves the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/admin/method/GetPublisherData
  """
  @spec get_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def get_publisher_data(params) do
    fetch("Admin/GetPublisherData", params)
  end

  @doc """
  Retrieves the random drop table configuration for the title

  @link https://api.playfab.com/documentation/admin/method/GetRandomResultTables
  """
  @spec get_random_result_tables(map()) :: {:ok, map} | {:error, String.t}
  def get_random_result_tables(params) do
    fetch("Admin/GetRandomResultTables", params)
  end

  @doc """
  Retrieves the set of items defined for the specified store, including all prices defined

  @link https://api.playfab.com/documentation/admin/method/GetStoreItems
  """
  @spec get_store_items(map()) :: {:ok, map} | {:error, String.t}
  def get_store_items(params) do
    fetch("Admin/GetStoreItems", params)
  end

  @doc """
  Retrieves the key-value store of custom title settings which can be read by the client

  @link https://api.playfab.com/documentation/admin/method/GetTitleData
  """
  @spec get_title_data(map()) :: {:ok, map} | {:error, String.t}
  def get_title_data(params) do
    fetch("Admin/GetTitleData", params)
  end

  @doc """
  Retrieves the key-value store of custom title settings which cannot be read by the client

  @link https://api.playfab.com/documentation/admin/method/GetTitleInternalData
  """
  @spec get_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def get_title_internal_data(params) do
    fetch("Admin/GetTitleInternalData", params)
  end

  @doc """
  Retuns the list of all defined virtual currencies for the title

  @link https://api.playfab.com/documentation/admin/method/ListVirtualCurrencyTypes
  """
  @spec list_virtual_currency_types(map()) :: {:ok, map} | {:error, String.t}
  def list_virtual_currency_types(params) do
    fetch("Admin/ListVirtualCurrencyTypes", params)
  end

  @doc """
  Removes one or more virtual currencies from the set defined for the title.

  @link https://api.playfab.com/documentation/admin/method/RemoveVirtualCurrencyTypes
  """
  @spec remove_virtual_currency_types(map()) :: {:ok, map} | {:error, String.t}
  def remove_virtual_currency_types(params) do
    fetch("Admin/RemoveVirtualCurrencyTypes", params)
  end

  @doc """
  Creates the catalog configuration of all virtual goods for the specified catalog version

  @link https://api.playfab.com/documentation/admin/method/SetCatalogItems
  """
  @spec set_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  def set_catalog_items(params) do
    fetch("Admin/SetCatalogItems", params)
  end

  @doc """
  Sets all the items in one virtual store

  @link https://api.playfab.com/documentation/admin/method/SetStoreItems
  """
  @spec set_store_items(map()) :: {:ok, map} | {:error, String.t}
  def set_store_items(params) do
    fetch("Admin/SetStoreItems", params)
  end

  @doc """
  Creates and updates the key-value store of custom title settings which can be read by the client

  @link https://api.playfab.com/documentation/admin/method/SetTitleData
  """
  @spec set_title_data(map()) :: {:ok, map} | {:error, String.t}
  def set_title_data(params) do
    fetch("Admin/SetTitleData", params)
  end

  @doc """
  Updates the key-value store of custom title settings which cannot be read by the client

  @link https://api.playfab.com/documentation/admin/method/SetTitleInternalData
  """
  @spec set_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def set_title_internal_data(params) do
    fetch("Admin/SetTitleInternalData", params)
  end

  @doc """
  Sets the Amazon Resource Name (ARN) for iOS and Android push notifications. Documentation on the exact restrictions can be found at: . Currently, Amazon device Messaging is not supported.

  @link https://api.playfab.com/documentation/admin/method/SetupPushNotification
  """
  @spec setup_push_notification(map()) :: {:ok, map} | {:error, String.t}
  def setup_push_notification(params) do
    fetch("Admin/SetupPushNotification", params)
  end

  @doc """
  Updates the random drop table configuration for the title

  @link https://api.playfab.com/documentation/admin/method/UpdateCatalogItems
  """
  @spec update_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  def update_catalog_items(params) do
    fetch("Admin/UpdateCatalogItems", params)
  end

  @doc """
  Updates an existing virtual item store with new or modified items

  @link https://api.playfab.com/documentation/admin/method/UpdateRandomResultTables
  """
  @spec update_random_result_tables(map()) :: {:ok, map} | {:error, String.t}
  def update_random_result_tables(params) do
    fetch("Admin/UpdateRandomResultTables", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/admin/method/UpdateStoreItems
  """
  @spec update_store_items(map()) :: {:ok, map} | {:error, String.t}
  def update_store_items(params) do
    fetch("Admin/UpdateStoreItems", params)
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
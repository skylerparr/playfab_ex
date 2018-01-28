defmodule PlayfabEx.Admin.TitleWideDataManagement do
  use Interface

  @doc """
  Adds a new news item to the title's news feed

  @link https://api.playfab.com/documentation/admin/method/AddNews
  """
  @spec add_news(map()) :: {:ok, map} | {:error, String.t}
  definterface add_news(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Adds one or more virtual currencies to the set defined for the title. Virtual Currencies have a maximum value of 2,147,483,647 when granted to a player. Any value over that will be discarded.

  @link https://api.playfab.com/documentation/admin/method/AddVirtualCurrencyTypes
  """
  @spec add_virtual_currency_types(map()) :: {:ok, map} | {:error, String.t}
  definterface add_virtual_currency_types(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Deletes an existing virtual item store

  @link https://api.playfab.com/documentation/admin/method/DeleteStore
  """
  @spec delete_store(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_store(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the specified version of the title's catalog of virtual goods, including all defined properties

  @link https://api.playfab.com/documentation/admin/method/GetCatalogItems
  """
  @spec get_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  definterface get_catalog_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/admin/method/GetPublisherData
  """
  @spec get_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the random drop table configuration for the title

  @link https://api.playfab.com/documentation/admin/method/GetRandomResultTables
  """
  @spec get_random_result_tables(map()) :: {:ok, map} | {:error, String.t}
  definterface get_random_result_tables(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the set of items defined for the specified store, including all prices defined

  @link https://api.playfab.com/documentation/admin/method/GetStoreItems
  """
  @spec get_store_items(map()) :: {:ok, map} | {:error, String.t}
  definterface get_store_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom title settings which can be read by the client

  @link https://api.playfab.com/documentation/admin/method/GetTitleData
  """
  @spec get_title_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom title settings which cannot be read by the client

  @link https://api.playfab.com/documentation/admin/method/GetTitleInternalData
  """
  @spec get_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Retuns the list of all defined virtual currencies for the title

  @link https://api.playfab.com/documentation/admin/method/ListVirtualCurrencyTypes
  """
  @spec list_virtual_currency_types(map()) :: {:ok, map} | {:error, String.t}
  definterface list_virtual_currency_types(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Removes one or more virtual currencies from the set defined for the title.

  @link https://api.playfab.com/documentation/admin/method/RemoveVirtualCurrencyTypes
  """
  @spec remove_virtual_currency_types(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_virtual_currency_types(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Creates the catalog configuration of all virtual goods for the specified catalog version

  @link https://api.playfab.com/documentation/admin/method/SetCatalogItems
  """
  @spec set_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  definterface set_catalog_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Sets all the items in one virtual store

  @link https://api.playfab.com/documentation/admin/method/SetStoreItems
  """
  @spec set_store_items(map()) :: {:ok, map} | {:error, String.t}
  definterface set_store_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Creates and updates the key-value store of custom title settings which can be read by the client

  @link https://api.playfab.com/documentation/admin/method/SetTitleData
  """
  @spec set_title_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_title_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Updates the key-value store of custom title settings which cannot be read by the client

  @link https://api.playfab.com/documentation/admin/method/SetTitleInternalData
  """
  @spec set_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_title_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Sets the Amazon Resource Name (ARN) for iOS and Android push notifications. Documentation on the exact restrictions can be found at: . Currently, Amazon device Messaging is not supported.

  @link https://api.playfab.com/documentation/admin/method/SetupPushNotification
  """
  @spec setup_push_notification(map()) :: {:ok, map} | {:error, String.t}
  definterface setup_push_notification(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Updates the random drop table configuration for the title

  @link https://api.playfab.com/documentation/admin/method/UpdateCatalogItems
  """
  @spec update_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  definterface update_catalog_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  Updates an existing virtual item store with new or modified items

  @link https://api.playfab.com/documentation/admin/method/UpdateRandomResultTables
  """
  @spec update_random_result_tables(map()) :: {:ok, map} | {:error, String.t}
  definterface update_random_result_tables(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  

  @doc """
  

  @link https://api.playfab.com/documentation/admin/method/UpdateStoreItems
  """
  @spec update_store_items(map()) :: {:ok, map} | {:error, String.t}
  definterface update_store_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.TitleWideDataManagement) || PlayfabEx.Admin.Default.TitleWideDataManagement)
  
end
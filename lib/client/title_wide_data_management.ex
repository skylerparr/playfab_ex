defmodule PlayfabEx.Client.TitleWideDataManagement do
  use Interface

  @doc """
  Retrieves the specified version of the title's catalog of virtual goods, including all defined properties

  [online docs](https://api.playfab.com/documentation/client/method/GetCatalogItems)
  """
  @spec get_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  definterface get_catalog_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.TitleWideDataManagement) || PlayfabEx.Client.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom publisher settings

  [online docs](https://api.playfab.com/documentation/client/method/GetPublisherData)
  """
  @spec get_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.TitleWideDataManagement) || PlayfabEx.Client.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the set of items defined for the specified store, including all prices defined

  [online docs](https://api.playfab.com/documentation/client/method/GetStoreItems)
  """
  @spec get_store_items(map()) :: {:ok, map} | {:error, String.t}
  definterface get_store_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.TitleWideDataManagement) || PlayfabEx.Client.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the current server time

  [online docs](https://api.playfab.com/documentation/client/method/GetTime)
  """
  @spec get_time(map()) :: {:ok, map} | {:error, String.t}
  definterface get_time(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.TitleWideDataManagement) || PlayfabEx.Client.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom title settings

  [online docs](https://api.playfab.com/documentation/client/method/GetTitleData)
  """
  @spec get_title_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.TitleWideDataManagement) || PlayfabEx.Client.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the title news feed, as configured in the developer portal

  [online docs](https://api.playfab.com/documentation/client/method/GetTitleNews)
  """
  @spec get_title_news(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_news(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.TitleWideDataManagement) || PlayfabEx.Client.Default.TitleWideDataManagement)
  
end
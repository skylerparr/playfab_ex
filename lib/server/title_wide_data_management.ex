defmodule PlayfabEx.Server.TitleWideDataManagement do
  use Interface

  @doc """
  Retrieves the specified version of the title's catalog of virtual goods, including all defined properties

  @link https://api.playfab.com/documentation/server/method/GetCatalogItems
  """
  @spec get_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  definterface get_catalog_items(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/server/method/GetPublisherData
  """
  @spec get_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the current server time

  @link https://api.playfab.com/documentation/server/method/GetTime
  """
  @spec get_time(map()) :: {:ok, map} | {:error, String.t}
  definterface get_time(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom title settings

  @link https://api.playfab.com/documentation/server/method/GetTitleData
  """
  @spec get_title_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the key-value store of custom internal title settings

  @link https://api.playfab.com/documentation/server/method/GetTitleInternalData
  """
  @spec get_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Retrieves the title news feed, as configured in the developer portal

  @link https://api.playfab.com/documentation/server/method/GetTitleNews
  """
  @spec get_title_news(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_news(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Updates the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/server/method/SetPublisherData
  """
  @spec set_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Updates the key-value store of custom title settings

  @link https://api.playfab.com/documentation/server/method/SetTitleData
  """
  @spec set_title_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_title_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  

  @doc """
  Updates the key-value store of custom title settings

  @link https://api.playfab.com/documentation/server/method/SetTitleInternalData
  """
  @spec set_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_title_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.TitleWideDataManagement) || PlayfabEx.Server.Default.TitleWideDataManagement)
  
end
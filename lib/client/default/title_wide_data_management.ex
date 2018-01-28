defmodule PlayfabEx.Client.Default.TitleWideDataManagement do

  @doc """
  Retrieves the specified version of the title's catalog of virtual goods, including all defined properties

  @link https://api.playfab.com/documentation/client/method/GetCatalogItems
  """
  @spec get_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  def get_catalog_items(params) do
    fetch("Client/GetCatalogItems", params)
  end

  @doc """
  Retrieves the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/client/method/GetPublisherData
  """
  @spec get_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def get_publisher_data(params) do
    fetch("Client/GetPublisherData", params)
  end

  @doc """
  Retrieves the set of items defined for the specified store, including all prices defined

  @link https://api.playfab.com/documentation/client/method/GetStoreItems
  """
  @spec get_store_items(map()) :: {:ok, map} | {:error, String.t}
  def get_store_items(params) do
    fetch("Client/GetStoreItems", params)
  end

  @doc """
  Retrieves the current server time

  @link https://api.playfab.com/documentation/client/method/GetTime
  """
  @spec get_time(map()) :: {:ok, map} | {:error, String.t}
  def get_time(params) do
    fetch("Client/GetTime", params)
  end

  @doc """
  Retrieves the key-value store of custom title settings

  @link https://api.playfab.com/documentation/client/method/GetTitleData
  """
  @spec get_title_data(map()) :: {:ok, map} | {:error, String.t}
  def get_title_data(params) do
    fetch("Client/GetTitleData", params)
  end

  @doc """
  Retrieves the title news feed, as configured in the developer portal

  @link https://api.playfab.com/documentation/client/method/GetTitleNews
  """
  @spec get_title_news(map()) :: {:ok, map} | {:error, String.t}
  def get_title_news(params) do
    fetch("Client/GetTitleNews", params)
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
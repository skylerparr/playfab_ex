defmodule PlayfabEx.Server.Default.TitleWideDataManagement do

  @doc """
  Retrieves the specified version of the title's catalog of virtual goods, including all defined properties

  @link https://api.playfab.com/documentation/server/method/GetCatalogItems
  """
  @spec get_catalog_items(map()) :: {:ok, map} | {:error, String.t}
  def get_catalog_items(params) do
    fetch("Server/GetCatalogItems", params)
  end

  @doc """
  Retrieves the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/server/method/GetPublisherData
  """
  @spec get_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def get_publisher_data(params) do
    fetch("Server/GetPublisherData", params)
  end

  @doc """
  Retrieves the current server time

  @link https://api.playfab.com/documentation/server/method/GetTime
  """
  @spec get_time(map()) :: {:ok, map} | {:error, String.t}
  def get_time(params) do
    fetch("Server/GetTime", params)
  end

  @doc """
  Retrieves the key-value store of custom title settings

  @link https://api.playfab.com/documentation/server/method/GetTitleData
  """
  @spec get_title_data(map()) :: {:ok, map} | {:error, String.t}
  def get_title_data(params) do
    fetch("Server/GetTitleData", params)
  end

  @doc """
  Retrieves the key-value store of custom internal title settings

  @link https://api.playfab.com/documentation/server/method/GetTitleInternalData
  """
  @spec get_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def get_title_internal_data(params) do
    fetch("Server/GetTitleInternalData", params)
  end

  @doc """
  Retrieves the title news feed, as configured in the developer portal

  @link https://api.playfab.com/documentation/server/method/GetTitleNews
  """
  @spec get_title_news(map()) :: {:ok, map} | {:error, String.t}
  def get_title_news(params) do
    fetch("Server/GetTitleNews", params)
  end

  @doc """
  Updates the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/server/method/SetPublisherData
  """
  @spec set_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def set_publisher_data(params) do
    fetch("Server/SetPublisherData", params)
  end

  @doc """
  Updates the key-value store of custom title settings

  @link https://api.playfab.com/documentation/server/method/SetTitleData
  """
  @spec set_title_data(map()) :: {:ok, map} | {:error, String.t}
  def set_title_data(params) do
    fetch("Server/SetTitleData", params)
  end

  @doc """
  Updates the key-value store of custom title settings

  @link https://api.playfab.com/documentation/server/method/SetTitleInternalData
  """
  @spec set_title_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def set_title_internal_data(params) do
    fetch("Server/SetTitleInternalData", params)
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
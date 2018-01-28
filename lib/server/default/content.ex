defmodule PlayfabEx.Server.Default.Content do

  @doc """
  This API retrieves a pre-signed URL for accessing a content file for the title. A subsequent  HTTP GET to the returned URL will attempt to download the content. A HEAD query to the returned URL will attempt to  retrieve the metadata of the content. Note that a successful result does not guarantee the existence of this content -  if it has not been uploaded, the query to retrieve the data will fail. See this post for more information: .  Also, please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.

  @link https://api.playfab.com/documentation/server/method/GetContentDownloadUrl
  """
  @spec get_content_download_url(map()) :: {:ok, map} | {:error, String.t}
  def get_content_download_url(params) do
    fetch("Server/GetContentDownloadUrl", params)
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
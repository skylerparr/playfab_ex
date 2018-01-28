defmodule PlayfabEx.Client.Content do
  use Interface

  @doc """
  This API retrieves a pre-signed URL for accessing a content file for the title. A subsequent  HTTP GET to the returned URL will attempt to download the content. A HEAD query to the returned URL will attempt to  retrieve the metadata of the content. Note that a successful result does not guarantee the existence of this content -  if it has not been uploaded, the query to retrieve the data will fail. See this post for more information: .  Also, please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.

  @link https://api.playfab.com/documentation/client/method/GetContentDownloadUrl
  """
  @spec get_content_download_url(map()) :: {:ok, map} | {:error, String.t}
  definterface get_content_download_url(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Content) || PlayfabEx.Client.Default.Content)
  
end
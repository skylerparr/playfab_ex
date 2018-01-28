defmodule PlayfabEx.Admin.Content do
  use Interface

  @doc """
  Delete a content file from the title. When deleting a file that does not exist, it returns success.

  [online docs](https://api.playfab.com/documentation/admin/method/DeleteContent)
  """
  @spec delete_content(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_content(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Content) || PlayfabEx.Admin.Default.Content)
  

  @doc """
  List all contents of the title and get statistics such as size

  [online docs](https://api.playfab.com/documentation/admin/method/GetContentList)
  """
  @spec get_content_list(map()) :: {:ok, map} | {:error, String.t}
  definterface get_content_list(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Content) || PlayfabEx.Admin.Default.Content)
  

  @doc """
  Retrieves the pre-signed URL for uploading a content file. A subsequent HTTP PUT to the returned URL uploads the  content. Also, please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.

  [online docs](https://api.playfab.com/documentation/admin/method/GetContentUploadUrl)
  """
  @spec get_content_upload_url(map()) :: {:ok, map} | {:error, String.t}
  definterface get_content_upload_url(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Content) || PlayfabEx.Admin.Default.Content)
  
end
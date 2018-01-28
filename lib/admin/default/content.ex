defmodule PlayfabEx.Admin.Default.Content do

  @doc """
  Delete a content file from the title. When deleting a file that does not exist, it returns success.

  @link https://api.playfab.com/documentation/admin/method/DeleteContent
  """
  @spec delete_content(map()) :: {:ok, map} | {:error, String.t}
  def delete_content(params) do
    fetch("Admin/DeleteContent", params)
  end

  @doc """
  List all contents of the title and get statistics such as size

  @link https://api.playfab.com/documentation/admin/method/GetContentList
  """
  @spec get_content_list(map()) :: {:ok, map} | {:error, String.t}
  def get_content_list(params) do
    fetch("Admin/GetContentList", params)
  end

  @doc """
  Retrieves the pre-signed URL for uploading a content file. A subsequent HTTP PUT to the returned URL uploads the  content. Also, please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.

  @link https://api.playfab.com/documentation/admin/method/GetContentUploadUrl
  """
  @spec get_content_upload_url(map()) :: {:ok, map} | {:error, String.t}
  def get_content_upload_url(params) do
    fetch("Admin/GetContentUploadUrl", params)
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
defmodule PlayfabEx.Admin.Default.ServerSideCloudScript do

  @doc """
  Gets the contents and information of a specific Cloud Script revision.

  @link https://api.playfab.com/documentation/admin/method/GetCloudScriptRevision
  """
  @spec get_cloud_script_revision(map()) :: {:ok, map} | {:error, String.t}
  def get_cloud_script_revision(params) do
    fetch("Admin/GetCloudScriptRevision", params)
  end

  @doc """
  Lists all the current cloud script versions. For each version, information about the current published and latest revisions is also listed.

  @link https://api.playfab.com/documentation/admin/method/GetCloudScriptVersions
  """
  @spec get_cloud_script_versions(map()) :: {:ok, map} | {:error, String.t}
  def get_cloud_script_versions(params) do
    fetch("Admin/GetCloudScriptVersions", params)
  end

  @doc """
  Sets the currently published revision of a title Cloud Script

  @link https://api.playfab.com/documentation/admin/method/SetPublishedRevision
  """
  @spec set_published_revision(map()) :: {:ok, map} | {:error, String.t}
  def set_published_revision(params) do
    fetch("Admin/SetPublishedRevision", params)
  end

  @doc """
  Creates a new Cloud Script revision and uploads source code to it. Note that at this time, only one file should be submitted in the revision.

  @link https://api.playfab.com/documentation/admin/method/UpdateCloudScript
  """
  @spec update_cloud_script(map()) :: {:ok, map} | {:error, String.t}
  def update_cloud_script(params) do
    fetch("Admin/UpdateCloudScript", params)
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
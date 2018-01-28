defmodule PlayfabEx.Admin.ServerSideCloudScript do
  use Interface

  @doc """
  Gets the contents and information of a specific Cloud Script revision.

  [online docs](https://api.playfab.com/documentation/admin/method/GetCloudScriptRevision)
  """
  @spec get_cloud_script_revision(map()) :: {:ok, map} | {:error, String.t}
  definterface get_cloud_script_revision(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ServerSideCloudScript) || PlayfabEx.Admin.Default.ServerSideCloudScript)
  

  @doc """
  Lists all the current cloud script versions. For each version, information about the current published and latest revisions is also listed.

  [online docs](https://api.playfab.com/documentation/admin/method/GetCloudScriptVersions)
  """
  @spec get_cloud_script_versions(map()) :: {:ok, map} | {:error, String.t}
  definterface get_cloud_script_versions(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ServerSideCloudScript) || PlayfabEx.Admin.Default.ServerSideCloudScript)
  

  @doc """
  Sets the currently published revision of a title Cloud Script

  [online docs](https://api.playfab.com/documentation/admin/method/SetPublishedRevision)
  """
  @spec set_published_revision(map()) :: {:ok, map} | {:error, String.t}
  definterface set_published_revision(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ServerSideCloudScript) || PlayfabEx.Admin.Default.ServerSideCloudScript)
  

  @doc """
  Creates a new Cloud Script revision and uploads source code to it. Note that at this time, only one file should be submitted in the revision.

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateCloudScript)
  """
  @spec update_cloud_script(map()) :: {:ok, map} | {:error, String.t}
  definterface update_cloud_script(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ServerSideCloudScript) || PlayfabEx.Admin.Default.ServerSideCloudScript)
  
end
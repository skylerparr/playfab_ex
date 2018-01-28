defmodule PlayfabEx.Admin.CustomServerManagement do
  use Interface

  @doc """
  Adds the game server executable specified (previously uploaded - see GetServerBuildUploadUrl) to the set of those a client is permitted to request in a call to StartGame

  @link https://api.playfab.com/documentation/admin/method/AddServerBuild
  """
  @spec add_server_build(map()) :: {:ok, map} | {:error, String.t}
  definterface add_server_build(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.CustomServerManagement) || PlayfabEx.Admin.Default.CustomServerManagement)
  

  @doc """
  Retrieves the build details for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/GetServerBuildInfo
  """
  @spec get_server_build_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_server_build_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.CustomServerManagement) || PlayfabEx.Admin.Default.CustomServerManagement)
  

  @doc """
  Retrieves the pre-authorized URL for uploading a game server package containing a build (does not enable the build for use - see AddServerBuild)

  @link https://api.playfab.com/documentation/admin/method/GetServerBuildUploadUrl
  """
  @spec get_server_build_upload_url(map()) :: {:ok, map} | {:error, String.t}
  definterface get_server_build_upload_url(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.CustomServerManagement) || PlayfabEx.Admin.Default.CustomServerManagement)
  

  @doc """
  Retrieves the build details for all game server executables which are currently defined for the title

  @link https://api.playfab.com/documentation/admin/method/ListServerBuilds
  """
  @spec list_server_builds(map()) :: {:ok, map} | {:error, String.t}
  definterface list_server_builds(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.CustomServerManagement) || PlayfabEx.Admin.Default.CustomServerManagement)
  

  @doc """
  Updates the build details for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/ModifyServerBuild
  """
  @spec modify_server_build(map()) :: {:ok, map} | {:error, String.t}
  definterface modify_server_build(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.CustomServerManagement) || PlayfabEx.Admin.Default.CustomServerManagement)
  

  @doc """
  Removes the game server executable specified from the set of those a client is permitted to request in a call to StartGame

  @link https://api.playfab.com/documentation/admin/method/RemoveServerBuild
  """
  @spec remove_server_build(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_server_build(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.CustomServerManagement) || PlayfabEx.Admin.Default.CustomServerManagement)
  
end
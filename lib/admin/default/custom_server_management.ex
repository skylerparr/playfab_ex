defmodule PlayfabEx.Admin.Default.CustomServerManagement do

  @doc """
  Adds the game server executable specified (previously uploaded - see GetServerBuildUploadUrl) to the set of those a client is permitted to request in a call to StartGame

  @link https://api.playfab.com/documentation/admin/method/AddServerBuild
  """
  @spec add_server_build(map()) :: {:ok, map} | {:error, String.t}
  def add_server_build(params) do
    fetch("Admin/AddServerBuild", params)
  end

  @doc """
  Retrieves the build details for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/GetServerBuildInfo
  """
  @spec get_server_build_info(map()) :: {:ok, map} | {:error, String.t}
  def get_server_build_info(params) do
    fetch("Admin/GetServerBuildInfo", params)
  end

  @doc """
  Retrieves the pre-authorized URL for uploading a game server package containing a build (does not enable the build for use - see AddServerBuild)

  @link https://api.playfab.com/documentation/admin/method/GetServerBuildUploadUrl
  """
  @spec get_server_build_upload_url(map()) :: {:ok, map} | {:error, String.t}
  def get_server_build_upload_url(params) do
    fetch("Admin/GetServerBuildUploadUrl", params)
  end

  @doc """
  Retrieves the build details for all game server executables which are currently defined for the title

  @link https://api.playfab.com/documentation/admin/method/ListServerBuilds
  """
  @spec list_server_builds(map()) :: {:ok, map} | {:error, String.t}
  def list_server_builds(params) do
    fetch("Admin/ListServerBuilds", params)
  end

  @doc """
  Updates the build details for the specified game server executable

  @link https://api.playfab.com/documentation/admin/method/ModifyServerBuild
  """
  @spec modify_server_build(map()) :: {:ok, map} | {:error, String.t}
  def modify_server_build(params) do
    fetch("Admin/ModifyServerBuild", params)
  end

  @doc """
  Removes the game server executable specified from the set of those a client is permitted to request in a call to StartGame

  @link https://api.playfab.com/documentation/admin/method/RemoveServerBuild
  """
  @spec remove_server_build(map()) :: {:ok, map} | {:error, String.t}
  def remove_server_build(params) do
    fetch("Admin/RemoveServerBuild", params)
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
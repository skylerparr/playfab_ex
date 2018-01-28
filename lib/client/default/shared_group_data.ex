defmodule PlayfabEx.Client.Default.SharedGroupData do

  @doc """
  Adds users to the set of those able to update both the shared data, as well as the set of users  in the group. Only users in the group can add new members. Shared Groups are designed for sharing data between a very  small number of players, please see our guide:

  @link https://api.playfab.com/documentation/client/method/AddSharedGroupMembers
  """
  @spec add_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  def add_shared_group_members(params) do
    fetch("Client/AddSharedGroupMembers", params)
  end

  @doc """
  Retrieves data stored in a shared group object, as well as the list of members in  the group. Non-members of the group may use this to retrieve group data, including membership, but they  will not receive data for keys marked as private. Shared Groups are designed for sharing data between a  very small number of players, please see our guide:

  @link https://api.playfab.com/documentation/client/method/CreateSharedGroup
  """
  @spec create_shared_group(map()) :: {:ok, map} | {:error, String.t}
  def create_shared_group(params) do
    fetch("Client/CreateSharedGroup", params)
  end

  @doc """
  Adds, updates, and removes data keys for a shared group object. If the permission is set to Public, all fields updated or added in this call will be readable by users not in the group. By default, data permissions are set to Private. Regardless of the permission setting, only members of the group can update the data. Shared Groups are designed  for sharing data between a very small number of players, please see our guide:

  @link https://api.playfab.com/documentation/client/method/GetSharedGroupData
  """
  @spec get_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  def get_shared_group_data(params) do
    fetch("Client/GetSharedGroupData", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/client/method/RemoveSharedGroupMembers
  """
  @spec remove_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  def remove_shared_group_members(params) do
    fetch("Client/RemoveSharedGroupMembers", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/client/method/UpdateSharedGroupData
  """
  @spec update_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  def update_shared_group_data(params) do
    fetch("Client/UpdateSharedGroupData", params)
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
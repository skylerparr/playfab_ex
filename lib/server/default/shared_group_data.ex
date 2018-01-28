defmodule PlayfabEx.Server.Default.SharedGroupData do

  @doc """
  Adds users to the set of those able to update both the shared data, as well as the set of users  in the group. Only users in the group (and the server) can add new members. Shared Groups are designed for sharing data  between a very small number of players, please see our guide:

  @link https://api.playfab.com/documentation/server/method/AddSharedGroupMembers
  """
  @spec add_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  def add_shared_group_members(params) do
    fetch("Server/AddSharedGroupMembers", params)
  end

  @doc """
  Deletes a shared group, freeing up the shared group ID to be reused for a new group.  Shared Groups are designed for sharing data between a very small number of players, please see our guide:

  @link https://api.playfab.com/documentation/server/method/CreateSharedGroup
  """
  @spec create_shared_group(map()) :: {:ok, map} | {:error, String.t}
  def create_shared_group(params) do
    fetch("Server/CreateSharedGroup", params)
  end

  @doc """
  Removes users from the set of those able to update the shared data and the set of users in the group. Only users in the group can remove members. If as a result of the call, zero users remain with access, the group and its associated data will be deleted. Shared Groups are designed for sharing data between a very small number of players,  please see our guide:

  @link https://api.playfab.com/documentation/server/method/DeleteSharedGroup
  """
  @spec delete_shared_group(map()) :: {:ok, map} | {:error, String.t}
  def delete_shared_group(params) do
    fetch("Server/DeleteSharedGroup", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/server/method/GetSharedGroupData
  """
  @spec get_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  def get_shared_group_data(params) do
    fetch("Server/GetSharedGroupData", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/server/method/RemoveSharedGroupMembers
  """
  @spec remove_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  def remove_shared_group_members(params) do
    fetch("Server/RemoveSharedGroupMembers", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/server/method/UpdateSharedGroupData
  """
  @spec update_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  def update_shared_group_data(params) do
    fetch("Server/UpdateSharedGroupData", params)
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
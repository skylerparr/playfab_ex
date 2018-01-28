defmodule PlayfabEx.Server.SharedGroupData do
  use Interface

  @doc """
  Adds users to the set of those able to update both the shared data, as well as the set of users  in the group. Only users in the group (and the server) can add new members. Shared Groups are designed for sharing data  between a very small number of players, please see our guide:

  [online docs](https://api.playfab.com/documentation/server/method/AddSharedGroupMembers)
  """
  @spec add_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  definterface add_shared_group_members(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.SharedGroupData) || PlayfabEx.Server.Default.SharedGroupData)
  

  @doc """
  Deletes a shared group, freeing up the shared group ID to be reused for a new group.  Shared Groups are designed for sharing data between a very small number of players, please see our guide:

  [online docs](https://api.playfab.com/documentation/server/method/CreateSharedGroup)
  """
  @spec create_shared_group(map()) :: {:ok, map} | {:error, String.t}
  definterface create_shared_group(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.SharedGroupData) || PlayfabEx.Server.Default.SharedGroupData)
  

  @doc """
  Removes users from the set of those able to update the shared data and the set of users in the group. Only users in the group can remove members. If as a result of the call, zero users remain with access, the group and its associated data will be deleted. Shared Groups are designed for sharing data between a very small number of players,  please see our guide:

  [online docs](https://api.playfab.com/documentation/server/method/DeleteSharedGroup)
  """
  @spec delete_shared_group(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_shared_group(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.SharedGroupData) || PlayfabEx.Server.Default.SharedGroupData)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/server/method/GetSharedGroupData)
  """
  @spec get_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_shared_group_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.SharedGroupData) || PlayfabEx.Server.Default.SharedGroupData)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/server/method/RemoveSharedGroupMembers)
  """
  @spec remove_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_shared_group_members(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.SharedGroupData) || PlayfabEx.Server.Default.SharedGroupData)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/server/method/UpdateSharedGroupData)
  """
  @spec update_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_shared_group_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.SharedGroupData) || PlayfabEx.Server.Default.SharedGroupData)
  
end
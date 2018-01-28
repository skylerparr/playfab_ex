defmodule PlayfabEx.Client.SharedGroupData do
  use Interface

  @doc """
  Adds users to the set of those able to update both the shared data, as well as the set of users  in the group. Only users in the group can add new members. Shared Groups are designed for sharing data between a very  small number of players, please see our guide:

  [online docs](https://api.playfab.com/documentation/client/method/AddSharedGroupMembers)
  """
  @spec add_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  definterface add_shared_group_members(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.SharedGroupData) || PlayfabEx.Client.Default.SharedGroupData)
  

  @doc """
  Retrieves data stored in a shared group object, as well as the list of members in  the group. Non-members of the group may use this to retrieve group data, including membership, but they  will not receive data for keys marked as private. Shared Groups are designed for sharing data between a  very small number of players, please see our guide:

  [online docs](https://api.playfab.com/documentation/client/method/CreateSharedGroup)
  """
  @spec create_shared_group(map()) :: {:ok, map} | {:error, String.t}
  definterface create_shared_group(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.SharedGroupData) || PlayfabEx.Client.Default.SharedGroupData)
  

  @doc """
  Adds, updates, and removes data keys for a shared group object. If the permission is set to Public, all fields updated or added in this call will be readable by users not in the group. By default, data permissions are set to Private. Regardless of the permission setting, only members of the group can update the data. Shared Groups are designed  for sharing data between a very small number of players, please see our guide:

  [online docs](https://api.playfab.com/documentation/client/method/GetSharedGroupData)
  """
  @spec get_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_shared_group_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.SharedGroupData) || PlayfabEx.Client.Default.SharedGroupData)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/client/method/RemoveSharedGroupMembers)
  """
  @spec remove_shared_group_members(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_shared_group_members(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.SharedGroupData) || PlayfabEx.Client.Default.SharedGroupData)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/client/method/UpdateSharedGroupData)
  """
  @spec update_shared_group_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_shared_group_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.SharedGroupData) || PlayfabEx.Client.Default.SharedGroupData)
  
end
defmodule PlayfabEx.Client.FriendListManagement do
  use Interface

  @doc """
  Adds the PlayFab user, based upon a match against a supplied unique identifier, to the friend list of the local user. At least one of FriendPlayFabId,FriendUsername,FriendEmail, or FriendTitleDisplayName should be initialized.

  @link https://api.playfab.com/documentation/client/method/AddFriend
  """
  @spec add_friend(map()) :: {:ok, map} | {:error, String.t}
  definterface add_friend(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.FriendListManagement) || PlayfabEx.Client.Default.FriendListManagement)
  

  @doc """
  Retrieves the current friend list for the local user, constrained to users who have PlayFab accounts. Friends from linked accounts (Facebook, Steam) are also included. You may optionally exclude some linked services' friends.

  @link https://api.playfab.com/documentation/client/method/GetFriendsList
  """
  @spec get_friends_list(map()) :: {:ok, map} | {:error, String.t}
  definterface get_friends_list(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.FriendListManagement) || PlayfabEx.Client.Default.FriendListManagement)
  

  @doc """
  Removes a specified user from the friend list of the local user

  @link https://api.playfab.com/documentation/client/method/RemoveFriend
  """
  @spec remove_friend(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_friend(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.FriendListManagement) || PlayfabEx.Client.Default.FriendListManagement)
  

  @doc """
  Updates the tag list for a specified user in the friend list of the local user

  @link https://api.playfab.com/documentation/client/method/SetFriendTags
  """
  @spec set_friend_tags(map()) :: {:ok, map} | {:error, String.t}
  definterface set_friend_tags(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.FriendListManagement) || PlayfabEx.Client.Default.FriendListManagement)
  
end
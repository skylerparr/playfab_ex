defmodule PlayfabEx.Server.FriendListManagement do
  use Interface

  @doc """
  Adds the Friend user to the friendlist of the user with PlayFabId. At least one of FriendPlayFabId,FriendUsername,FriendEmail, or FriendTitleDisplayName should be initialized.

  @link https://api.playfab.com/documentation/server/method/AddFriend
  """
  @spec add_friend(map()) :: {:ok, map} | {:error, String.t}
  definterface add_friend(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.FriendListManagement) || PlayfabEx.Server.Default.FriendListManagement)
  

  @doc """
  Retrieves the current friends for the user with PlayFabId, constrained to users who have PlayFab accounts. Friends from linked accounts (Facebook, Steam) are also included. You may optionally exclude some linked services' friends.

  @link https://api.playfab.com/documentation/server/method/GetFriendsList
  """
  @spec get_friends_list(map()) :: {:ok, map} | {:error, String.t}
  definterface get_friends_list(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.FriendListManagement) || PlayfabEx.Server.Default.FriendListManagement)
  

  @doc """
  Removes the specified friend from the the user's friend list

  @link https://api.playfab.com/documentation/server/method/RemoveFriend
  """
  @spec remove_friend(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_friend(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.FriendListManagement) || PlayfabEx.Server.Default.FriendListManagement)
  

  @doc """
  Updates the tag list for a specified user in the friend list of another user

  @link https://api.playfab.com/documentation/server/method/SetFriendTags
  """
  @spec set_friend_tags(map()) :: {:ok, map} | {:error, String.t}
  definterface set_friend_tags(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.FriendListManagement) || PlayfabEx.Server.Default.FriendListManagement)
  
end
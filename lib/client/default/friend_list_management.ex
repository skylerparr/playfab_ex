defmodule PlayfabEx.Client.Default.FriendListManagement do

  @doc """
  Adds the PlayFab user, based upon a match against a supplied unique identifier, to the friend list of the local user. At least one of FriendPlayFabId,FriendUsername,FriendEmail, or FriendTitleDisplayName should be initialized.

  @link https://api.playfab.com/documentation/client/method/AddFriend
  """
  @spec add_friend(map()) :: {:ok, map} | {:error, String.t}
  def add_friend(params) do
    fetch("Client/AddFriend", params)
  end

  @doc """
  Retrieves the current friend list for the local user, constrained to users who have PlayFab accounts. Friends from linked accounts (Facebook, Steam) are also included. You may optionally exclude some linked services' friends.

  @link https://api.playfab.com/documentation/client/method/GetFriendsList
  """
  @spec get_friends_list(map()) :: {:ok, map} | {:error, String.t}
  def get_friends_list(params) do
    fetch("Client/GetFriendsList", params)
  end

  @doc """
  Removes a specified user from the friend list of the local user

  @link https://api.playfab.com/documentation/client/method/RemoveFriend
  """
  @spec remove_friend(map()) :: {:ok, map} | {:error, String.t}
  def remove_friend(params) do
    fetch("Client/RemoveFriend", params)
  end

  @doc """
  Updates the tag list for a specified user in the friend list of the local user

  @link https://api.playfab.com/documentation/client/method/SetFriendTags
  """
  @spec set_friend_tags(map()) :: {:ok, map} | {:error, String.t}
  def set_friend_tags(params) do
    fetch("Client/SetFriendTags", params)
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
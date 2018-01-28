defmodule PlayfabEx.Server.AccountManagement do
  use Interface

  @doc """
  Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.

  [online docs](https://api.playfab.com/documentation/server/method/BanUsers)
  """
  @spec ban_users(map()) :: {:ok, map} | {:error, String.t}
  definterface ban_users(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Retrieves the player's profile

  [online docs](https://api.playfab.com/documentation/server/method/GetPlayerProfile)
  """
  @spec get_player_profile(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_profile(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.

  [online docs](https://api.playfab.com/documentation/server/method/GetPlayFabIDsFromFacebookIDs)
  """
  @spec get_play_fab_ids_from_facebook_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_facebook_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Steam identifiers. The Steam identifiers  are the profile IDs for the user accounts, available as SteamId in the Steamworks Community API calls.

  [online docs](https://api.playfab.com/documentation/server/method/GetPlayFabIDsFromSteamIDs)
  """
  @spec get_play_fab_ids_from_steam_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_steam_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Retrieves the relevant details for a specified user

  [online docs](https://api.playfab.com/documentation/server/method/GetUserAccountInfo)
  """
  @spec get_user_account_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_account_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Gets all bans for a user.

  [online docs](https://api.playfab.com/documentation/server/method/GetUserBans)
  """
  @spec get_user_bans(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_bans(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Revoke all active bans for a user.

  [online docs](https://api.playfab.com/documentation/server/method/RevokeAllBansForUser)
  """
  @spec revoke_all_bans_for_user(map()) :: {:ok, map} | {:error, String.t}
  definterface revoke_all_bans_for_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Revoke all active bans specified with BanId.

  [online docs](https://api.playfab.com/documentation/server/method/RevokeBans)
  """
  @spec revoke_bans(map()) :: {:ok, map} | {:error, String.t}
  definterface revoke_bans(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Forces an email to be sent to the registered contact email address for the user's account based on an account recovery email template

  [online docs](https://api.playfab.com/documentation/server/method/SendCustomAccountRecoveryEmail)
  """
  @spec send_custom_account_recovery_email(map()) :: {:ok, map} | {:error, String.t}
  definterface send_custom_account_recovery_email(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Sends an email based on an email template to a player's contact email

  [online docs](https://api.playfab.com/documentation/server/method/SendEmailFromTemplate)
  """
  @spec send_email_from_template(map()) :: {:ok, map} | {:error, String.t}
  definterface send_email_from_template(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Sends an iOS/Android Push Notification to a specific user, if that user's device has been configured for Push Notifications in PlayFab. If a user has linked both Android and iOS devices, both will be notified.

  [online docs](https://api.playfab.com/documentation/server/method/SendPushNotification)
  """
  @spec send_push_notification(map()) :: {:ok, map} | {:error, String.t}
  definterface send_push_notification(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Update the avatar URL of the specified player

  [online docs](https://api.playfab.com/documentation/server/method/UpdateAvatarUrl)
  """
  @spec update_avatar_url(map()) :: {:ok, map} | {:error, String.t}
  definterface update_avatar_url(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  

  @doc """
  Updates information of a list of existing bans specified with Ban Ids.

  [online docs](https://api.playfab.com/documentation/server/method/UpdateBans)
  """
  @spec update_bans(map()) :: {:ok, map} | {:error, String.t}
  definterface update_bans(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.AccountManagement) || PlayfabEx.Server.Default.AccountManagement)
  
end
defmodule PlayfabEx.Admin.AccountManagement do
  use Interface

  @doc """
  Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.

  @link https://api.playfab.com/documentation/admin/method/BanUsers
  """
  @spec ban_users(map()) :: {:ok, map} | {:error, String.t}
  definterface ban_users(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Removes a user's player account from a title and deletes all associated data

  @link https://api.playfab.com/documentation/admin/method/DeletePlayer
  """
  @spec delete_player(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_player(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Permanently deletes a title and all associated configuration

  @link https://api.playfab.com/documentation/admin/method/DeleteTitle
  """
  @spec delete_title(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_title(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Gets a player's ID from an auth token.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerIdFromAuthToken
  """
  @spec get_player_id_from_auth_token(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_id_from_auth_token(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Retrieves the player's profile

  @link https://api.playfab.com/documentation/admin/method/GetPlayerProfile
  """
  @spec get_player_profile(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_profile(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Retrieves the relevant details for a specified user, based upon a match against a supplied unique identifier

  @link https://api.playfab.com/documentation/admin/method/GetUserAccountInfo
  """
  @spec get_user_account_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_account_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Gets all bans for a user.

  @link https://api.playfab.com/documentation/admin/method/GetUserBans
  """
  @spec get_user_bans(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_bans(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Reset a player's password for a given title.

  @link https://api.playfab.com/documentation/admin/method/ResetPassword
  """
  @spec reset_password(map()) :: {:ok, map} | {:error, String.t}
  definterface reset_password(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Revoke all active bans for a user.

  @link https://api.playfab.com/documentation/admin/method/RevokeAllBansForUser
  """
  @spec revoke_all_bans_for_user(map()) :: {:ok, map} | {:error, String.t}
  definterface revoke_all_bans_for_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Revoke all active bans specified with BanId.

  @link https://api.playfab.com/documentation/admin/method/RevokeBans
  """
  @spec revoke_bans(map()) :: {:ok, map} | {:error, String.t}
  definterface revoke_bans(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Forces an email to be sent to the registered email address for the specified account, with a link allowing the user to change the password

  @link https://api.playfab.com/documentation/admin/method/SendAccountRecoveryEmail
  """
  @spec send_account_recovery_email(map()) :: {:ok, map} | {:error, String.t}
  definterface send_account_recovery_email(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Updates information of a list of existing bans specified with Ban Ids.

  @link https://api.playfab.com/documentation/admin/method/UpdateBans
  """
  @spec update_bans(map()) :: {:ok, map} | {:error, String.t}
  definterface update_bans(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  

  @doc """
  Updates the title specific display name for a user

  @link https://api.playfab.com/documentation/admin/method/UpdateUserTitleDisplayName
  """
  @spec update_user_title_display_name(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_title_display_name(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.AccountManagement) || PlayfabEx.Admin.Default.AccountManagement)
  
end
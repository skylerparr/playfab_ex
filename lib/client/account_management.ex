defmodule PlayfabEx.Client.AccountManagement do
  use Interface

  @doc """
  Adds the specified generic service identifier to the player's PlayFab account. This is designed to allow for a PlayFab ID lookup of any arbitrary service identifier a title wants to add. This identifier should never be used as authentication credentials, as the intent is that it is easily accessible by other players.

  [online docs](https://api.playfab.com/documentation/client/method/AddGenericID)
  """
  @spec add_generic_id(map()) :: {:ok, map} | {:error, String.t}
  definterface add_generic_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Adds or updates a contact email to the player's profile.

  [online docs](https://api.playfab.com/documentation/client/method/AddOrUpdateContactEmail)
  """
  @spec add_or_update_contact_email(map()) :: {:ok, map} | {:error, String.t}
  definterface add_or_update_contact_email(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Adds playfab username/password auth to an existing account created via an anonymous auth method, e.g. automatic device ID login.

  [online docs](https://api.playfab.com/documentation/client/method/AddUsernamePassword)
  """
  @spec add_username_password(map()) :: {:ok, map} | {:error, String.t}
  definterface add_username_password(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the user's PlayFab account details

  [online docs](https://api.playfab.com/documentation/client/method/GetAccountInfo)
  """
  @spec get_account_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_account_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves all of the user's different kinds of info.

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayerCombinedInfo)
  """
  @spec get_player_combined_info(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_combined_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the player's profile

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayerProfile)
  """
  @spec get_player_profile(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_profile(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromFacebookIDs)
  """
  @spec get_play_fab_ids_from_facebook_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_facebook_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Game Center identifiers (referenced in the Game Center Programming Guide as the Player Identifier).

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromGameCenterIDs)
  """
  @spec get_play_fab_ids_from_game_center_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_game_center_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of generic service identifiers. A generic identifier is the service name plus the service-specific ID for the player, as specified by the title when the generic identifier was added to the player account.

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromGenericIDs)
  """
  @spec get_play_fab_ids_from_generic_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_generic_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Google identifiers. The Google identifiers are the IDs for the user accounts, available as "id" in the Google+ People API calls.

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromGoogleIDs)
  """
  @spec get_play_fab_ids_from_google_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_google_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Kongregate identifiers. The Kongregate identifiers are the IDs for the user accounts, available as "user_id" from the Kongregate API methods(ex: ).

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromKongregateIDs)
  """
  @spec get_play_fab_ids_from_kongregate_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_kongregate_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Twitch identifiers. The Twitch identifiers are the IDs for the user accounts, available as "_id" from the Twitch API methods (ex: ).

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromSteamIDs)
  """
  @spec get_play_fab_ids_from_steam_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_steam_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the Android device identifier to the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromTwitchIDs)
  """
  @spec get_play_fab_ids_from_twitch_ids(map()) :: {:ok, map} | {:error, String.t}
  definterface get_play_fab_ids_from_twitch_ids(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the Facebook account associated with the provided Facebook access token to the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/LinkAndroidDeviceID)
  """
  @spec link_android_device_id(map()) :: {:ok, map} | {:error, String.t}
  definterface link_android_device_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the Game Center account associated with the provided Game Center ID to the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/LinkCustomID)
  """
  @spec link_custom_id(map()) :: {:ok, map} | {:error, String.t}
  definterface link_custom_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the currently signed-in user account to their Google account, using their Google account credentials

  [online docs](https://api.playfab.com/documentation/client/method/LinkFacebookAccount)
  """
  @spec link_facebook_account(map()) :: {:ok, map} | {:error, String.t}
  definterface link_facebook_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the vendor-specific iOS device identifier to the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/LinkGameCenterAccount)
  """
  @spec link_game_center_account(map()) :: {:ok, map} | {:error, String.t}
  definterface link_game_center_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the Kongregate identifier to the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/LinkGoogleAccount)
  """
  @spec link_google_account(map()) :: {:ok, map} | {:error, String.t}
  definterface link_google_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the Steam account associated with the provided Steam authentication ticket to the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/LinkIOSDeviceID)
  """
  @spec link_ios_device_id(map()) :: {:ok, map} | {:error, String.t}
  definterface link_ios_device_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Links the Twitch account associated with the token to the user's PlayFab account.

  [online docs](https://api.playfab.com/documentation/client/method/LinkKongregate)
  """
  @spec link_kongregate(map()) :: {:ok, map} | {:error, String.t}
  definterface link_kongregate(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Link Windows Hello authentication to the current PlayFab Account

  [online docs](https://api.playfab.com/documentation/client/method/LinkSteamAccount)
  """
  @spec link_steam_account(map()) :: {:ok, map} | {:error, String.t}
  definterface link_steam_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Removes a contact email from the player's profile.

  [online docs](https://api.playfab.com/documentation/client/method/LinkTwitch)
  """
  @spec link_twitch(map()) :: {:ok, map} | {:error, String.t}
  definterface link_twitch(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Removes the specified generic service identifier from the player's PlayFab account.

  [online docs](https://api.playfab.com/documentation/client/method/LinkWindowsHello)
  """
  @spec link_windows_hello(map()) :: {:ok, map} | {:error, String.t}
  definterface link_windows_hello(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Submit a report for another player (due to bad bahavior, etc.), so that customer service representatives for the title can take action concerning potentially toxic players.

  [online docs](https://api.playfab.com/documentation/client/method/RemoveContactEmail)
  """
  @spec remove_contact_email(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_contact_email(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Forces an email to be sent to the registered email address for the user's account, with a link allowing the user to change the password

  [online docs](https://api.playfab.com/documentation/client/method/RemoveGenericID)
  """
  @spec remove_generic_id(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_generic_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related Android device identifier from the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/ReportPlayer)
  """
  @spec report_player(map()) :: {:ok, map} | {:error, String.t}
  definterface report_player(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related custom identifier from the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/SendAccountRecoveryEmail)
  """
  @spec send_account_recovery_email(map()) :: {:ok, map} | {:error, String.t}
  definterface send_account_recovery_email(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related Facebook account from the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkAndroidDeviceID)
  """
  @spec unlink_android_device_id(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_android_device_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related Game Center account from the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkCustomID)
  """
  @spec unlink_custom_id(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_custom_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related Google account from the user's PlayFab account ( ).

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkFacebookAccount)
  """
  @spec unlink_facebook_account(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_facebook_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related iOS device identifier from the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkGameCenterAccount)
  """
  @spec unlink_game_center_account(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_game_center_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related Kongregate identifier from the user's PlayFab account

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkGoogleAccount)
  """
  @spec unlink_google_account(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_google_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlinks the related Twitch account from the user's PlayFab account.

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkIOSDeviceID)
  """
  @spec unlink_ios_device_id(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_ios_device_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Unlink Windows Hello authentication from the current PlayFab Account

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkKongregate)
  """
  @spec unlink_kongregate(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_kongregate(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Update the avatar URL of the player

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkSteamAccount)
  """
  @spec unlink_steam_account(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_steam_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  Updates the title specific display name for the user

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkTwitch)
  """
  @spec unlink_twitch(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_twitch(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/client/method/UnlinkWindowsHello)
  """
  @spec unlink_windows_hello(map()) :: {:ok, map} | {:error, String.t}
  definterface unlink_windows_hello(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/client/method/UpdateAvatarUrl)
  """
  @spec update_avatar_url(map()) :: {:ok, map} | {:error, String.t}
  definterface update_avatar_url(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  

  @doc """
  

  [online docs](https://api.playfab.com/documentation/client/method/UpdateUserTitleDisplayName)
  """
  @spec update_user_title_display_name(map()) :: {:ok, map} | {:error, String.t}
  definterface update_user_title_display_name(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.AccountManagement) || PlayfabEx.Client.Default.AccountManagement)
  
end
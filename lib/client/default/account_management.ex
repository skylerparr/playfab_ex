defmodule PlayfabEx.Client.Default.AccountManagement do

  @doc """
  Adds the specified generic service identifier to the player's PlayFab account. This is designed to allow for a PlayFab ID lookup of any arbitrary service identifier a title wants to add. This identifier should never be used as authentication credentials, as the intent is that it is easily accessible by other players.

  @link https://api.playfab.com/documentation/client/method/AddGenericID
  """
  @spec add_generic_id(map()) :: {:ok, map} | {:error, String.t}
  def add_generic_id(params) do
    fetch("Client/AddGenericID", params)
  end

  @doc """
  Adds or updates a contact email to the player's profile.

  @link https://api.playfab.com/documentation/client/method/AddOrUpdateContactEmail
  """
  @spec add_or_update_contact_email(map()) :: {:ok, map} | {:error, String.t}
  def add_or_update_contact_email(params) do
    fetch("Client/AddOrUpdateContactEmail", params)
  end

  @doc """
  Adds playfab username/password auth to an existing account created via an anonymous auth method, e.g. automatic device ID login.

  @link https://api.playfab.com/documentation/client/method/AddUsernamePassword
  """
  @spec add_username_password(map()) :: {:ok, map} | {:error, String.t}
  def add_username_password(params) do
    fetch("Client/AddUsernamePassword", params)
  end

  @doc """
  Retrieves the user's PlayFab account details

  @link https://api.playfab.com/documentation/client/method/GetAccountInfo
  """
  @spec get_account_info(map()) :: {:ok, map} | {:error, String.t}
  def get_account_info(params) do
    fetch("Client/GetAccountInfo", params)
  end

  @doc """
  Retrieves all of the user's different kinds of info.

  @link https://api.playfab.com/documentation/client/method/GetPlayerCombinedInfo
  """
  @spec get_player_combined_info(map()) :: {:ok, map} | {:error, String.t}
  def get_player_combined_info(params) do
    fetch("Client/GetPlayerCombinedInfo", params)
  end

  @doc """
  Retrieves the player's profile

  @link https://api.playfab.com/documentation/client/method/GetPlayerProfile
  """
  @spec get_player_profile(map()) :: {:ok, map} | {:error, String.t}
  def get_player_profile(params) do
    fetch("Client/GetPlayerProfile", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromFacebookIDs
  """
  @spec get_play_fab_ids_from_facebook_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_facebook_ids(params) do
    fetch("Client/GetPlayFabIDsFromFacebookIDs", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Game Center identifiers (referenced in the Game Center Programming Guide as the Player Identifier).

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromGameCenterIDs
  """
  @spec get_play_fab_ids_from_game_center_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_game_center_ids(params) do
    fetch("Client/GetPlayFabIDsFromGameCenterIDs", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of generic service identifiers. A generic identifier is the service name plus the service-specific ID for the player, as specified by the title when the generic identifier was added to the player account.

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromGenericIDs
  """
  @spec get_play_fab_ids_from_generic_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_generic_ids(params) do
    fetch("Client/GetPlayFabIDsFromGenericIDs", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Google identifiers. The Google identifiers are the IDs for the user accounts, available as "id" in the Google+ People API calls.

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromGoogleIDs
  """
  @spec get_play_fab_ids_from_google_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_google_ids(params) do
    fetch("Client/GetPlayFabIDsFromGoogleIDs", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Kongregate identifiers. The Kongregate identifiers are the IDs for the user accounts, available as "user_id" from the Kongregate API methods(ex: ).

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromKongregateIDs
  """
  @spec get_play_fab_ids_from_kongregate_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_kongregate_ids(params) do
    fetch("Client/GetPlayFabIDsFromKongregateIDs", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Twitch identifiers. The Twitch identifiers are the IDs for the user accounts, available as "_id" from the Twitch API methods (ex: ).

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromSteamIDs
  """
  @spec get_play_fab_ids_from_steam_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_steam_ids(params) do
    fetch("Client/GetPlayFabIDsFromSteamIDs", params)
  end

  @doc """
  Links the Android device identifier to the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/GetPlayFabIDsFromTwitchIDs
  """
  @spec get_play_fab_ids_from_twitch_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_twitch_ids(params) do
    fetch("Client/GetPlayFabIDsFromTwitchIDs", params)
  end

  @doc """
  Links the Facebook account associated with the provided Facebook access token to the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/LinkAndroidDeviceID
  """
  @spec link_android_device_id(map()) :: {:ok, map} | {:error, String.t}
  def link_android_device_id(params) do
    fetch("Client/LinkAndroidDeviceID", params)
  end

  @doc """
  Links the Game Center account associated with the provided Game Center ID to the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/LinkCustomID
  """
  @spec link_custom_id(map()) :: {:ok, map} | {:error, String.t}
  def link_custom_id(params) do
    fetch("Client/LinkCustomID", params)
  end

  @doc """
  Links the currently signed-in user account to their Google account, using their Google account credentials

  @link https://api.playfab.com/documentation/client/method/LinkFacebookAccount
  """
  @spec link_facebook_account(map()) :: {:ok, map} | {:error, String.t}
  def link_facebook_account(params) do
    fetch("Client/LinkFacebookAccount", params)
  end

  @doc """
  Links the vendor-specific iOS device identifier to the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/LinkGameCenterAccount
  """
  @spec link_game_center_account(map()) :: {:ok, map} | {:error, String.t}
  def link_game_center_account(params) do
    fetch("Client/LinkGameCenterAccount", params)
  end

  @doc """
  Links the Kongregate identifier to the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/LinkGoogleAccount
  """
  @spec link_google_account(map()) :: {:ok, map} | {:error, String.t}
  def link_google_account(params) do
    fetch("Client/LinkGoogleAccount", params)
  end

  @doc """
  Links the Steam account associated with the provided Steam authentication ticket to the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/LinkIOSDeviceID
  """
  @spec link_ios_device_id(map()) :: {:ok, map} | {:error, String.t}
  def link_ios_device_id(params) do
    fetch("Client/LinkIOSDeviceID", params)
  end

  @doc """
  Links the Twitch account associated with the token to the user's PlayFab account.

  @link https://api.playfab.com/documentation/client/method/LinkKongregate
  """
  @spec link_kongregate(map()) :: {:ok, map} | {:error, String.t}
  def link_kongregate(params) do
    fetch("Client/LinkKongregate", params)
  end

  @doc """
  Link Windows Hello authentication to the current PlayFab Account

  @link https://api.playfab.com/documentation/client/method/LinkSteamAccount
  """
  @spec link_steam_account(map()) :: {:ok, map} | {:error, String.t}
  def link_steam_account(params) do
    fetch("Client/LinkSteamAccount", params)
  end

  @doc """
  Removes a contact email from the player's profile.

  @link https://api.playfab.com/documentation/client/method/LinkTwitch
  """
  @spec link_twitch(map()) :: {:ok, map} | {:error, String.t}
  def link_twitch(params) do
    fetch("Client/LinkTwitch", params)
  end

  @doc """
  Removes the specified generic service identifier from the player's PlayFab account.

  @link https://api.playfab.com/documentation/client/method/LinkWindowsHello
  """
  @spec link_windows_hello(map()) :: {:ok, map} | {:error, String.t}
  def link_windows_hello(params) do
    fetch("Client/LinkWindowsHello", params)
  end

  @doc """
  Submit a report for another player (due to bad bahavior, etc.), so that customer service representatives for the title can take action concerning potentially toxic players.

  @link https://api.playfab.com/documentation/client/method/RemoveContactEmail
  """
  @spec remove_contact_email(map()) :: {:ok, map} | {:error, String.t}
  def remove_contact_email(params) do
    fetch("Client/RemoveContactEmail", params)
  end

  @doc """
  Forces an email to be sent to the registered email address for the user's account, with a link allowing the user to change the password

  @link https://api.playfab.com/documentation/client/method/RemoveGenericID
  """
  @spec remove_generic_id(map()) :: {:ok, map} | {:error, String.t}
  def remove_generic_id(params) do
    fetch("Client/RemoveGenericID", params)
  end

  @doc """
  Unlinks the related Android device identifier from the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/ReportPlayer
  """
  @spec report_player(map()) :: {:ok, map} | {:error, String.t}
  def report_player(params) do
    fetch("Client/ReportPlayer", params)
  end

  @doc """
  Unlinks the related custom identifier from the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/SendAccountRecoveryEmail
  """
  @spec send_account_recovery_email(map()) :: {:ok, map} | {:error, String.t}
  def send_account_recovery_email(params) do
    fetch("Client/SendAccountRecoveryEmail", params)
  end

  @doc """
  Unlinks the related Facebook account from the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/UnlinkAndroidDeviceID
  """
  @spec unlink_android_device_id(map()) :: {:ok, map} | {:error, String.t}
  def unlink_android_device_id(params) do
    fetch("Client/UnlinkAndroidDeviceID", params)
  end

  @doc """
  Unlinks the related Game Center account from the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/UnlinkCustomID
  """
  @spec unlink_custom_id(map()) :: {:ok, map} | {:error, String.t}
  def unlink_custom_id(params) do
    fetch("Client/UnlinkCustomID", params)
  end

  @doc """
  Unlinks the related Google account from the user's PlayFab account ( ).

  @link https://api.playfab.com/documentation/client/method/UnlinkFacebookAccount
  """
  @spec unlink_facebook_account(map()) :: {:ok, map} | {:error, String.t}
  def unlink_facebook_account(params) do
    fetch("Client/UnlinkFacebookAccount", params)
  end

  @doc """
  Unlinks the related iOS device identifier from the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/UnlinkGameCenterAccount
  """
  @spec unlink_game_center_account(map()) :: {:ok, map} | {:error, String.t}
  def unlink_game_center_account(params) do
    fetch("Client/UnlinkGameCenterAccount", params)
  end

  @doc """
  Unlinks the related Kongregate identifier from the user's PlayFab account

  @link https://api.playfab.com/documentation/client/method/UnlinkGoogleAccount
  """
  @spec unlink_google_account(map()) :: {:ok, map} | {:error, String.t}
  def unlink_google_account(params) do
    fetch("Client/UnlinkGoogleAccount", params)
  end

  @doc """
  Unlinks the related Twitch account from the user's PlayFab account.

  @link https://api.playfab.com/documentation/client/method/UnlinkIOSDeviceID
  """
  @spec unlink_ios_device_id(map()) :: {:ok, map} | {:error, String.t}
  def unlink_ios_device_id(params) do
    fetch("Client/UnlinkIOSDeviceID", params)
  end

  @doc """
  Unlink Windows Hello authentication from the current PlayFab Account

  @link https://api.playfab.com/documentation/client/method/UnlinkKongregate
  """
  @spec unlink_kongregate(map()) :: {:ok, map} | {:error, String.t}
  def unlink_kongregate(params) do
    fetch("Client/UnlinkKongregate", params)
  end

  @doc """
  Update the avatar URL of the player

  @link https://api.playfab.com/documentation/client/method/UnlinkSteamAccount
  """
  @spec unlink_steam_account(map()) :: {:ok, map} | {:error, String.t}
  def unlink_steam_account(params) do
    fetch("Client/UnlinkSteamAccount", params)
  end

  @doc """
  Updates the title specific display name for the user

  @link https://api.playfab.com/documentation/client/method/UnlinkTwitch
  """
  @spec unlink_twitch(map()) :: {:ok, map} | {:error, String.t}
  def unlink_twitch(params) do
    fetch("Client/UnlinkTwitch", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/client/method/UnlinkWindowsHello
  """
  @spec unlink_windows_hello(map()) :: {:ok, map} | {:error, String.t}
  def unlink_windows_hello(params) do
    fetch("Client/UnlinkWindowsHello", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/client/method/UpdateAvatarUrl
  """
  @spec update_avatar_url(map()) :: {:ok, map} | {:error, String.t}
  def update_avatar_url(params) do
    fetch("Client/UpdateAvatarUrl", params)
  end

  @doc """
  

  @link https://api.playfab.com/documentation/client/method/UpdateUserTitleDisplayName
  """
  @spec update_user_title_display_name(map()) :: {:ok, map} | {:error, String.t}
  def update_user_title_display_name(params) do
    fetch("Client/UpdateUserTitleDisplayName", params)
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
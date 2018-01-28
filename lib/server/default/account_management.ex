defmodule PlayfabEx.Server.Default.AccountManagement do

  @doc """
  Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.

  @link https://api.playfab.com/documentation/server/method/BanUsers
  """
  @spec ban_users(map()) :: {:ok, map} | {:error, String.t}
  def ban_users(params) do
    fetch("Server/BanUsers", params)
  end

  @doc """
  Retrieves the player's profile

  @link https://api.playfab.com/documentation/server/method/GetPlayerProfile
  """
  @spec get_player_profile(map()) :: {:ok, map} | {:error, String.t}
  def get_player_profile(params) do
    fetch("Server/GetPlayerProfile", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.

  @link https://api.playfab.com/documentation/server/method/GetPlayFabIDsFromFacebookIDs
  """
  @spec get_play_fab_ids_from_facebook_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_facebook_ids(params) do
    fetch("Server/GetPlayFabIDsFromFacebookIDs", params)
  end

  @doc """
  Retrieves the unique PlayFab identifiers for the given set of Steam identifiers. The Steam identifiers  are the profile IDs for the user accounts, available as SteamId in the Steamworks Community API calls.

  @link https://api.playfab.com/documentation/server/method/GetPlayFabIDsFromSteamIDs
  """
  @spec get_play_fab_ids_from_steam_ids(map()) :: {:ok, map} | {:error, String.t}
  def get_play_fab_ids_from_steam_ids(params) do
    fetch("Server/GetPlayFabIDsFromSteamIDs", params)
  end

  @doc """
  Retrieves the relevant details for a specified user

  @link https://api.playfab.com/documentation/server/method/GetUserAccountInfo
  """
  @spec get_user_account_info(map()) :: {:ok, map} | {:error, String.t}
  def get_user_account_info(params) do
    fetch("Server/GetUserAccountInfo", params)
  end

  @doc """
  Gets all bans for a user.

  @link https://api.playfab.com/documentation/server/method/GetUserBans
  """
  @spec get_user_bans(map()) :: {:ok, map} | {:error, String.t}
  def get_user_bans(params) do
    fetch("Server/GetUserBans", params)
  end

  @doc """
  Revoke all active bans for a user.

  @link https://api.playfab.com/documentation/server/method/RevokeAllBansForUser
  """
  @spec revoke_all_bans_for_user(map()) :: {:ok, map} | {:error, String.t}
  def revoke_all_bans_for_user(params) do
    fetch("Server/RevokeAllBansForUser", params)
  end

  @doc """
  Revoke all active bans specified with BanId.

  @link https://api.playfab.com/documentation/server/method/RevokeBans
  """
  @spec revoke_bans(map()) :: {:ok, map} | {:error, String.t}
  def revoke_bans(params) do
    fetch("Server/RevokeBans", params)
  end

  @doc """
  Forces an email to be sent to the registered contact email address for the user's account based on an account recovery email template

  @link https://api.playfab.com/documentation/server/method/SendCustomAccountRecoveryEmail
  """
  @spec send_custom_account_recovery_email(map()) :: {:ok, map} | {:error, String.t}
  def send_custom_account_recovery_email(params) do
    fetch("Server/SendCustomAccountRecoveryEmail", params)
  end

  @doc """
  Sends an email based on an email template to a player's contact email

  @link https://api.playfab.com/documentation/server/method/SendEmailFromTemplate
  """
  @spec send_email_from_template(map()) :: {:ok, map} | {:error, String.t}
  def send_email_from_template(params) do
    fetch("Server/SendEmailFromTemplate", params)
  end

  @doc """
  Sends an iOS/Android Push Notification to a specific user, if that user's device has been configured for Push Notifications in PlayFab. If a user has linked both Android and iOS devices, both will be notified.

  @link https://api.playfab.com/documentation/server/method/SendPushNotification
  """
  @spec send_push_notification(map()) :: {:ok, map} | {:error, String.t}
  def send_push_notification(params) do
    fetch("Server/SendPushNotification", params)
  end

  @doc """
  Update the avatar URL of the specified player

  @link https://api.playfab.com/documentation/server/method/UpdateAvatarUrl
  """
  @spec update_avatar_url(map()) :: {:ok, map} | {:error, String.t}
  def update_avatar_url(params) do
    fetch("Server/UpdateAvatarUrl", params)
  end

  @doc """
  Updates information of a list of existing bans specified with Ban Ids.

  @link https://api.playfab.com/documentation/server/method/UpdateBans
  """
  @spec update_bans(map()) :: {:ok, map} | {:error, String.t}
  def update_bans(params) do
    fetch("Server/UpdateBans", params)
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
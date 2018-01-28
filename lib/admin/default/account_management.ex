defmodule PlayfabEx.Admin.Default.AccountManagement do

  @doc """
  Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.

  @link https://api.playfab.com/documentation/admin/method/BanUsers
  """
  @spec ban_users(map()) :: {:ok, map} | {:error, String.t}
  def ban_users(params) do
    fetch("Admin/BanUsers", params)
  end

  @doc """
  Removes a user's player account from a title and deletes all associated data

  @link https://api.playfab.com/documentation/admin/method/DeletePlayer
  """
  @spec delete_player(map()) :: {:ok, map} | {:error, String.t}
  def delete_player(params) do
    fetch("Admin/DeletePlayer", params)
  end

  @doc """
  Permanently deletes a title and all associated configuration

  @link https://api.playfab.com/documentation/admin/method/DeleteTitle
  """
  @spec delete_title(map()) :: {:ok, map} | {:error, String.t}
  def delete_title(params) do
    fetch("Admin/DeleteTitle", params)
  end

  @doc """
  Gets a player's ID from an auth token.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerIdFromAuthToken
  """
  @spec get_player_id_from_auth_token(map()) :: {:ok, map} | {:error, String.t}
  def get_player_id_from_auth_token(params) do
    fetch("Admin/GetPlayerIdFromAuthToken", params)
  end

  @doc """
  Retrieves the player's profile

  @link https://api.playfab.com/documentation/admin/method/GetPlayerProfile
  """
  @spec get_player_profile(map()) :: {:ok, map} | {:error, String.t}
  def get_player_profile(params) do
    fetch("Admin/GetPlayerProfile", params)
  end

  @doc """
  Retrieves the relevant details for a specified user, based upon a match against a supplied unique identifier

  @link https://api.playfab.com/documentation/admin/method/GetUserAccountInfo
  """
  @spec get_user_account_info(map()) :: {:ok, map} | {:error, String.t}
  def get_user_account_info(params) do
    fetch("Admin/GetUserAccountInfo", params)
  end

  @doc """
  Gets all bans for a user.

  @link https://api.playfab.com/documentation/admin/method/GetUserBans
  """
  @spec get_user_bans(map()) :: {:ok, map} | {:error, String.t}
  def get_user_bans(params) do
    fetch("Admin/GetUserBans", params)
  end

  @doc """
  Reset a player's password for a given title.

  @link https://api.playfab.com/documentation/admin/method/ResetPassword
  """
  @spec reset_password(map()) :: {:ok, map} | {:error, String.t}
  def reset_password(params) do
    fetch("Admin/ResetPassword", params)
  end

  @doc """
  Revoke all active bans for a user.

  @link https://api.playfab.com/documentation/admin/method/RevokeAllBansForUser
  """
  @spec revoke_all_bans_for_user(map()) :: {:ok, map} | {:error, String.t}
  def revoke_all_bans_for_user(params) do
    fetch("Admin/RevokeAllBansForUser", params)
  end

  @doc """
  Revoke all active bans specified with BanId.

  @link https://api.playfab.com/documentation/admin/method/RevokeBans
  """
  @spec revoke_bans(map()) :: {:ok, map} | {:error, String.t}
  def revoke_bans(params) do
    fetch("Admin/RevokeBans", params)
  end

  @doc """
  Forces an email to be sent to the registered email address for the specified account, with a link allowing the user to change the password

  @link https://api.playfab.com/documentation/admin/method/SendAccountRecoveryEmail
  """
  @spec send_account_recovery_email(map()) :: {:ok, map} | {:error, String.t}
  def send_account_recovery_email(params) do
    fetch("Admin/SendAccountRecoveryEmail", params)
  end

  @doc """
  Updates information of a list of existing bans specified with Ban Ids.

  @link https://api.playfab.com/documentation/admin/method/UpdateBans
  """
  @spec update_bans(map()) :: {:ok, map} | {:error, String.t}
  def update_bans(params) do
    fetch("Admin/UpdateBans", params)
  end

  @doc """
  Updates the title specific display name for a user

  @link https://api.playfab.com/documentation/admin/method/UpdateUserTitleDisplayName
  """
  @spec update_user_title_display_name(map()) :: {:ok, map} | {:error, String.t}
  def update_user_title_display_name(params) do
    fetch("Admin/UpdateUserTitleDisplayName", params)
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
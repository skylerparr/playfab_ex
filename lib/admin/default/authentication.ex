defmodule PlayfabEx.Admin.Default.Authentication do

  @doc """
  Creates a new Player Shared Secret Key. It may take up to 5 minutes for this key to become generally available after this API returns.

  @link https://api.playfab.com/documentation/admin/method/CreatePlayerSharedSecret
  """
  @spec create_player_shared_secret(map()) :: {:ok, map} | {:error, String.t}
  def create_player_shared_secret(params) do
    fetch("Admin/CreatePlayerSharedSecret", params)
  end

  @doc """
  Deletes an existing Player Shared Secret Key. It may take up to 5 minutes for this delete to be reflected after this API returns.

  @link https://api.playfab.com/documentation/admin/method/DeletePlayerSharedSecret
  """
  @spec delete_player_shared_secret(map()) :: {:ok, map} | {:error, String.t}
  def delete_player_shared_secret(params) do
    fetch("Admin/DeletePlayerSharedSecret", params)
  end

  @doc """
  Returns all Player Shared Secret Keys including disabled and expired.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerSharedSecrets
  """
  @spec get_player_shared_secrets(map()) :: {:ok, map} | {:error, String.t}
  def get_player_shared_secrets(params) do
    fetch("Admin/GetPlayerSharedSecrets", params)
  end

  @doc """
  Gets the requested policy.

  @link https://api.playfab.com/documentation/admin/method/GetPolicy
  """
  @spec get_policy(map()) :: {:ok, map} | {:error, String.t}
  def get_policy(params) do
    fetch("Admin/GetPolicy", params)
  end

  @doc """
  Sets or resets the player's secret. Player secrets are used to sign API requests.

  @link https://api.playfab.com/documentation/admin/method/SetPlayerSecret
  """
  @spec set_player_secret(map()) :: {:ok, map} | {:error, String.t}
  def set_player_secret(params) do
    fetch("Admin/SetPlayerSecret", params)
  end

  @doc """
  Updates a existing Player Shared Secret Key. It may take up to 5 minutes for this update to become generally available after this API returns.

  @link https://api.playfab.com/documentation/admin/method/UpdatePlayerSharedSecret
  """
  @spec update_player_shared_secret(map()) :: {:ok, map} | {:error, String.t}
  def update_player_shared_secret(params) do
    fetch("Admin/UpdatePlayerSharedSecret", params)
  end

  @doc """
  Changes a policy for a title

  @link https://api.playfab.com/documentation/admin/method/UpdatePolicy
  """
  @spec update_policy(map()) :: {:ok, map} | {:error, String.t}
  def update_policy(params) do
    fetch("Admin/UpdatePolicy", params)
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
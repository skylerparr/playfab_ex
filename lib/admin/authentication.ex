defmodule PlayfabEx.Admin.Authentication do
  use Interface

  @doc """
  Creates a new Player Shared Secret Key. It may take up to 5 minutes for this key to become generally available after this API returns.

  [online docs](https://api.playfab.com/documentation/admin/method/CreatePlayerSharedSecret)
  """
  @spec create_player_shared_secret(map()) :: {:ok, map} | {:error, String.t}
  definterface create_player_shared_secret(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  

  @doc """
  Deletes an existing Player Shared Secret Key. It may take up to 5 minutes for this delete to be reflected after this API returns.

  [online docs](https://api.playfab.com/documentation/admin/method/DeletePlayerSharedSecret)
  """
  @spec delete_player_shared_secret(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_player_shared_secret(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  

  @doc """
  Returns all Player Shared Secret Keys including disabled and expired.

  [online docs](https://api.playfab.com/documentation/admin/method/GetPlayerSharedSecrets)
  """
  @spec get_player_shared_secrets(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_shared_secrets(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  

  @doc """
  Gets the requested policy.

  [online docs](https://api.playfab.com/documentation/admin/method/GetPolicy)
  """
  @spec get_policy(map()) :: {:ok, map} | {:error, String.t}
  definterface get_policy(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  

  @doc """
  Sets or resets the player's secret. Player secrets are used to sign API requests.

  [online docs](https://api.playfab.com/documentation/admin/method/SetPlayerSecret)
  """
  @spec set_player_secret(map()) :: {:ok, map} | {:error, String.t}
  definterface set_player_secret(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  

  @doc """
  Updates a existing Player Shared Secret Key. It may take up to 5 minutes for this update to become generally available after this API returns.

  [online docs](https://api.playfab.com/documentation/admin/method/UpdatePlayerSharedSecret)
  """
  @spec update_player_shared_secret(map()) :: {:ok, map} | {:error, String.t}
  definterface update_player_shared_secret(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  

  @doc """
  Changes a policy for a title

  [online docs](https://api.playfab.com/documentation/admin/method/UpdatePolicy)
  """
  @spec update_policy(map()) :: {:ok, map} | {:error, String.t}
  definterface update_policy(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Authentication) || PlayfabEx.Admin.Default.Authentication)
  
end
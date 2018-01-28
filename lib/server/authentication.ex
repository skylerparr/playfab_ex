defmodule PlayfabEx.Server.Authentication do
  use Interface

  @doc """
  Validated a client's session ticket, and if successful, returns details for that user

  @link https://api.playfab.com/documentation/server/method/AuthenticateSessionTicket
  """
  @spec authenticate_session_ticket(map()) :: {:ok, map} | {:error, String.t}
  definterface authenticate_session_ticket(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Authentication) || PlayfabEx.Server.Default.Authentication)
  

  @doc """
  Sets the player's secret if it is not already set. Player secrets are used to sign API requests. To reset a player's secret use the Admin or Server API method SetPlayerSecret.

  @link https://api.playfab.com/documentation/server/method/SetPlayerSecret
  """
  @spec set_player_secret(map()) :: {:ok, map} | {:error, String.t}
  definterface set_player_secret(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Authentication) || PlayfabEx.Server.Default.Authentication)
  
end
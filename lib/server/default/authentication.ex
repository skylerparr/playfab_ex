defmodule PlayfabEx.Server.Default.Authentication do

  @doc """
  Validated a client's session ticket, and if successful, returns details for that user

  @link https://api.playfab.com/documentation/server/method/AuthenticateSessionTicket
  """
  @spec authenticate_session_ticket(map()) :: {:ok, map} | {:error, String.t}
  def authenticate_session_ticket(params) do
    fetch("Server/AuthenticateSessionTicket", params)
  end

  @doc """
  Sets the player's secret if it is not already set. Player secrets are used to sign API requests. To reset a player's secret use the Admin or Server API method SetPlayerSecret.

  @link https://api.playfab.com/documentation/server/method/SetPlayerSecret
  """
  @spec set_player_secret(map()) :: {:ok, map} | {:error, String.t}
  def set_player_secret(params) do
    fetch("Server/SetPlayerSecret", params)
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
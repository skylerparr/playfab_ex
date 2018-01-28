defmodule PlayfabEx.Client.Default.Trading do

  @doc """
  Accepts an open trade (one that has not yet been accepted or cancelled), if the locally signed-in player is in the  allowed player list for the trade, or it is open to all players. If the call is successful, the offered and accepted items will be swapped  between the two players' inventories.

  @link https://api.playfab.com/documentation/client/method/AcceptTrade
  """
  @spec accept_trade(map()) :: {:ok, map} | {:error, String.t}
  def accept_trade(params) do
    fetch("Client/AcceptTrade", params)
  end

  @doc """
  Cancels an open trade (one that has not yet been accepted or cancelled). Note that only the player who created the trade  can cancel it via this API call, to prevent griefing of the trade system (cancelling trades in order to prevent other players from accepting  them, for trades that can be claimed by more than one player).

  @link https://api.playfab.com/documentation/client/method/CancelTrade
  """
  @spec cancel_trade(map()) :: {:ok, map} | {:error, String.t}
  def cancel_trade(params) do
    fetch("Client/CancelTrade", params)
  end

  @doc """
  Gets all trades the player has either opened or accepted, optionally filtered by trade status.

  @link https://api.playfab.com/documentation/client/method/GetPlayerTrades
  """
  @spec get_player_trades(map()) :: {:ok, map} | {:error, String.t}
  def get_player_trades(params) do
    fetch("Client/GetPlayerTrades", params)
  end

  @doc """
  Gets the current status of an existing trade.

  @link https://api.playfab.com/documentation/client/method/GetTradeStatus
  """
  @spec get_trade_status(map()) :: {:ok, map} | {:error, String.t}
  def get_trade_status(params) do
    fetch("Client/GetTradeStatus", params)
  end

  @doc """
  Opens a new outstanding trade. Note that a given item instance may only be in one open trade at a time.

  @link https://api.playfab.com/documentation/client/method/OpenTrade
  """
  @spec open_trade(map()) :: {:ok, map} | {:error, String.t}
  def open_trade(params) do
    fetch("Client/OpenTrade", params)
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
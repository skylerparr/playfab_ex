defmodule PlayfabEx.Client.Default.PlayerItemManagement do

  @doc """
  Increments the user's balance of the specified virtual currency by the stated amount

  @link https://api.playfab.com/documentation/client/method/AddUserVirtualCurrency
  """
  @spec add_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def add_user_virtual_currency(params) do
    fetch("Client/AddUserVirtualCurrency", params)
  end

  @doc """
  Confirms with the payment provider that the purchase was approved (if applicable) and adjusts inventory and  virtual currency balances as appropriate

  @link https://api.playfab.com/documentation/client/method/ConfirmPurchase
  """
  @spec confirm_purchase(map()) :: {:ok, map} | {:error, String.t}
  def confirm_purchase(params) do
    fetch("Client/ConfirmPurchase", params)
  end

  @doc """
  Consume uses of a consumable item. When all uses are consumed, it will be removed from the player's inventory.

  @link https://api.playfab.com/documentation/client/method/ConsumeItem
  """
  @spec consume_item(map()) :: {:ok, map} | {:error, String.t}
  def consume_item(params) do
    fetch("Client/ConsumeItem", params)
  end

  @doc """
  Retrieves the specified character's current inventory of virtual goods

  @link https://api.playfab.com/documentation/client/method/GetCharacterInventory
  """
  @spec get_character_inventory(map()) :: {:ok, map} | {:error, String.t}
  def get_character_inventory(params) do
    fetch("Client/GetCharacterInventory", params)
  end

  @doc """
  For payments flows where the provider requires playfab (the fulfiller) to initiate the transaction, but the client completes the rest of the flow. In the Xsolla case, the token returned here will be passed to Xsolla by the client to create a cart. Poll GetPurchase using the returned OrderId once you've completed the payment.

  @link https://api.playfab.com/documentation/client/method/GetPaymentToken
  """
  @spec get_payment_token(map()) :: {:ok, map} | {:error, String.t}
  def get_payment_token(params) do
    fetch("Client/GetPaymentToken", params)
  end

  @doc """
  Retrieves a purchase along with its current PlayFab status. Returns inventory items from the purchase that are still active.

  @link https://api.playfab.com/documentation/client/method/GetPurchase
  """
  @spec get_purchase(map()) :: {:ok, map} | {:error, String.t}
  def get_purchase(params) do
    fetch("Client/GetPurchase", params)
  end

  @doc """
  Retrieves the user's current inventory of virtual goods

  @link https://api.playfab.com/documentation/client/method/GetUserInventory
  """
  @spec get_user_inventory(map()) :: {:ok, map} | {:error, String.t}
  def get_user_inventory(params) do
    fetch("Client/GetUserInventory", params)
  end

  @doc """
  Selects a payment option for purchase order created via StartPurchase

  @link https://api.playfab.com/documentation/client/method/PayForPurchase
  """
  @spec pay_for_purchase(map()) :: {:ok, map} | {:error, String.t}
  def pay_for_purchase(params) do
    fetch("Client/PayForPurchase", params)
  end

  @doc """
  Buys a single item with virtual currency. You must specify both the virtual currency to use to purchase,  as well as what the client believes the price to be. This lets the server fail the purchase if the price has changed.

  @link https://api.playfab.com/documentation/client/method/PurchaseItem
  """
  @spec purchase_item(map()) :: {:ok, map} | {:error, String.t}
  def purchase_item(params) do
    fetch("Client/PurchaseItem", params)
  end

  @doc """
  Adds the virtual goods associated with the coupon to the user's inventory. Coupons can be generated  via the Economy->Catalogs tab in the PlayFab Game Manager.

  @link https://api.playfab.com/documentation/client/method/RedeemCoupon
  """
  @spec redeem_coupon(map()) :: {:ok, map} | {:error, String.t}
  def redeem_coupon(params) do
    fetch("Client/RedeemCoupon", params)
  end

  @doc """
  Creates an order for a list of items from the title catalog

  @link https://api.playfab.com/documentation/client/method/StartPurchase
  """
  @spec start_purchase(map()) :: {:ok, map} | {:error, String.t}
  def start_purchase(params) do
    fetch("Client/StartPurchase", params)
  end

  @doc """
  Decrements the user's balance of the specified virtual currency by the stated amount. It is possible to make a VC balance negative with this API.

  @link https://api.playfab.com/documentation/client/method/SubtractUserVirtualCurrency
  """
  @spec subtract_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def subtract_user_virtual_currency(params) do
    fetch("Client/SubtractUserVirtualCurrency", params)
  end

  @doc """
  Opens the specified container, with the specified key (when required), and returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.

  @link https://api.playfab.com/documentation/client/method/UnlockContainerInstance
  """
  @spec unlock_container_instance(map()) :: {:ok, map} | {:error, String.t}
  def unlock_container_instance(params) do
    fetch("Client/UnlockContainerInstance", params)
  end

  @doc """
  Searches target inventory for an ItemInstance matching the given CatalogItemId, if necessary unlocks it using an appropriate key, and returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.

  @link https://api.playfab.com/documentation/client/method/UnlockContainerItem
  """
  @spec unlock_container_item(map()) :: {:ok, map} | {:error, String.t}
  def unlock_container_item(params) do
    fetch("Client/UnlockContainerItem", params)
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
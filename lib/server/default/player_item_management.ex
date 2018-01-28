defmodule PlayfabEx.Server.Default.PlayerItemManagement do

  @doc """
  Increments  the character's balance of the specified virtual currency by the stated amount

  @link https://api.playfab.com/documentation/server/method/AddCharacterVirtualCurrency
  """
  @spec add_character_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def add_character_virtual_currency(params) do
    fetch("Server/AddCharacterVirtualCurrency", params)
  end

  @doc """
  Increments  the user's balance of the specified virtual currency by the stated amount

  @link https://api.playfab.com/documentation/server/method/AddUserVirtualCurrency
  """
  @spec add_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def add_user_virtual_currency(params) do
    fetch("Server/AddUserVirtualCurrency", params)
  end

  @doc """
  Consume uses of a consumable item. When all uses are consumed, it will be removed from the player's inventory.

  @link https://api.playfab.com/documentation/server/method/ConsumeItem
  """
  @spec consume_item(map()) :: {:ok, map} | {:error, String.t}
  def consume_item(params) do
    fetch("Server/ConsumeItem", params)
  end

  @doc """
  Returns the result of an evaluation of a Random Result Table - the ItemId from the game Catalog which would have been added to the player inventory, if the Random Result Table were added via a Bundle or a call to UnlockContainer.

  @link https://api.playfab.com/documentation/server/method/EvaluateRandomResultTable
  """
  @spec evaluate_random_result_table(map()) :: {:ok, map} | {:error, String.t}
  def evaluate_random_result_table(params) do
    fetch("Server/EvaluateRandomResultTable", params)
  end

  @doc """
  Retrieves the specified character's current inventory of virtual goods

  @link https://api.playfab.com/documentation/server/method/GetCharacterInventory
  """
  @spec get_character_inventory(map()) :: {:ok, map} | {:error, String.t}
  def get_character_inventory(params) do
    fetch("Server/GetCharacterInventory", params)
  end

  @doc """
  Retrieves the configuration information for the specified random results tables for the title, including all ItemId values and weights

  @link https://api.playfab.com/documentation/server/method/GetRandomResultTables
  """
  @spec get_random_result_tables(map()) :: {:ok, map} | {:error, String.t}
  def get_random_result_tables(params) do
    fetch("Server/GetRandomResultTables", params)
  end

  @doc """
  Retrieves the specified user's current inventory of virtual goods

  @link https://api.playfab.com/documentation/server/method/GetUserInventory
  """
  @spec get_user_inventory(map()) :: {:ok, map} | {:error, String.t}
  def get_user_inventory(params) do
    fetch("Server/GetUserInventory", params)
  end

  @doc """
  Adds the specified items to the specified character's inventory

  @link https://api.playfab.com/documentation/server/method/GrantItemsToCharacter
  """
  @spec grant_items_to_character(map()) :: {:ok, map} | {:error, String.t}
  def grant_items_to_character(params) do
    fetch("Server/GrantItemsToCharacter", params)
  end

  @doc """
  Adds the specified items to the specified user's inventory

  @link https://api.playfab.com/documentation/server/method/GrantItemsToUser
  """
  @spec grant_items_to_user(map()) :: {:ok, map} | {:error, String.t}
  def grant_items_to_user(params) do
    fetch("Server/GrantItemsToUser", params)
  end

  @doc """
  Adds the specified items to the specified user inventories

  @link https://api.playfab.com/documentation/server/method/GrantItemsToUsers
  """
  @spec grant_items_to_users(map()) :: {:ok, map} | {:error, String.t}
  def grant_items_to_users(params) do
    fetch("Server/GrantItemsToUsers", params)
  end

  @doc """
  Modifies the number of remaining uses of a player's inventory item

  @link https://api.playfab.com/documentation/server/method/ModifyItemUses
  """
  @spec modify_item_uses(map()) :: {:ok, map} | {:error, String.t}
  def modify_item_uses(params) do
    fetch("Server/ModifyItemUses", params)
  end

  @doc """
  Moves an item from a character's inventory into another of the users's character's inventory.

  @link https://api.playfab.com/documentation/server/method/MoveItemToCharacterFromCharacter
  """
  @spec move_item_to_character_from_character(map()) :: {:ok, map} | {:error, String.t}
  def move_item_to_character_from_character(params) do
    fetch("Server/MoveItemToCharacterFromCharacter", params)
  end

  @doc """
  Moves an item from a user's inventory into their character's inventory.

  @link https://api.playfab.com/documentation/server/method/MoveItemToCharacterFromUser
  """
  @spec move_item_to_character_from_user(map()) :: {:ok, map} | {:error, String.t}
  def move_item_to_character_from_user(params) do
    fetch("Server/MoveItemToCharacterFromUser", params)
  end

  @doc """
  Moves an item from a character's inventory into the owning user's inventory.

  @link https://api.playfab.com/documentation/server/method/MoveItemToUserFromCharacter
  """
  @spec move_item_to_user_from_character(map()) :: {:ok, map} | {:error, String.t}
  def move_item_to_user_from_character(params) do
    fetch("Server/MoveItemToUserFromCharacter", params)
  end

  @doc """
  Adds the virtual goods associated with the coupon to the user's inventory. Coupons can be generated  via the Economy->Catalogs tab in the PlayFab Game Manager.

  @link https://api.playfab.com/documentation/server/method/RedeemCoupon
  """
  @spec redeem_coupon(map()) :: {:ok, map} | {:error, String.t}
  def redeem_coupon(params) do
    fetch("Server/RedeemCoupon", params)
  end

  @doc """
  Submit a report about a player (due to bad bahavior, etc.) on behalf of another player, so that customer service representatives for the title can take action concerning potentially toxic players.

  @link https://api.playfab.com/documentation/server/method/ReportPlayer
  """
  @spec report_player(map()) :: {:ok, map} | {:error, String.t}
  def report_player(params) do
    fetch("Server/ReportPlayer", params)
  end

  @doc """
  Revokes access to an item in a user's inventory

  @link https://api.playfab.com/documentation/server/method/RevokeInventoryItem
  """
  @spec revoke_inventory_item(map()) :: {:ok, map} | {:error, String.t}
  def revoke_inventory_item(params) do
    fetch("Server/RevokeInventoryItem", params)
  end

  @doc """
  Decrements the character's balance of the specified virtual currency by the stated amount. It is possible to make a VC balance negative with this API.

  @link https://api.playfab.com/documentation/server/method/SubtractCharacterVirtualCurrency
  """
  @spec subtract_character_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def subtract_character_virtual_currency(params) do
    fetch("Server/SubtractCharacterVirtualCurrency", params)
  end

  @doc """
  Decrements the user's balance of the specified virtual currency by the stated amount. It is possible to make a VC balance negative with this API.

  @link https://api.playfab.com/documentation/server/method/SubtractUserVirtualCurrency
  """
  @spec subtract_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def subtract_user_virtual_currency(params) do
    fetch("Server/SubtractUserVirtualCurrency", params)
  end

  @doc """
  Opens a specific container (ContainerItemInstanceId), with a specific key (KeyItemInstanceId, when required), and returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.

  @link https://api.playfab.com/documentation/server/method/UnlockContainerInstance
  """
  @spec unlock_container_instance(map()) :: {:ok, map} | {:error, String.t}
  def unlock_container_instance(params) do
    fetch("Server/UnlockContainerInstance", params)
  end

  @doc """
  Searches Player or Character inventory for any ItemInstance matching the given CatalogItemId, if necessary unlocks it using any appropriate key, and returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.

  @link https://api.playfab.com/documentation/server/method/UnlockContainerItem
  """
  @spec unlock_container_item(map()) :: {:ok, map} | {:error, String.t}
  def unlock_container_item(params) do
    fetch("Server/UnlockContainerItem", params)
  end

  @doc """
  Updates the key-value pair data tagged to the specified item, which is read-only from the client.

  @link https://api.playfab.com/documentation/server/method/UpdateUserInventoryItemCustomData
  """
  @spec update_user_inventory_item_custom_data(map()) :: {:ok, map} | {:error, String.t}
  def update_user_inventory_item_custom_data(params) do
    fetch("Server/UpdateUserInventoryItemCustomData", params)
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
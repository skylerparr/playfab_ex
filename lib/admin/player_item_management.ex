defmodule PlayfabEx.Admin.PlayerItemManagement do
  use Interface

  @doc """
  Increments the specified virtual currency by the stated amount

  [online docs](https://api.playfab.com/documentation/admin/method/AddUserVirtualCurrency)
  """
  @spec add_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  definterface add_user_virtual_currency(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  

  @doc """
  Checks the global count for the limited edition item.

  [online docs](https://api.playfab.com/documentation/admin/method/CheckLimitedEditionItemAvailability)
  """
  @spec check_limited_edition_item_availability(map()) :: {:ok, map} | {:error, String.t}
  definterface check_limited_edition_item_availability(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  

  @doc """
  Retrieves the specified user's current inventory of virtual goods

  [online docs](https://api.playfab.com/documentation/admin/method/GetUserInventory)
  """
  @spec get_user_inventory(map()) :: {:ok, map} | {:error, String.t}
  definterface get_user_inventory(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  

  @doc """
  Adds the specified items to the specified user inventories

  [online docs](https://api.playfab.com/documentation/admin/method/GrantItemsToUsers)
  """
  @spec grant_items_to_users(map()) :: {:ok, map} | {:error, String.t}
  definterface grant_items_to_users(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  

  @doc """
  Increases the global count for the given scarce resource.

  [online docs](https://api.playfab.com/documentation/admin/method/IncrementLimitedEditionItemAvailability)
  """
  @spec increment_limited_edition_item_availability(map()) :: {:ok, map} | {:error, String.t}
  definterface increment_limited_edition_item_availability(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  

  @doc """
  Revokes access to an item in a user's inventory

  [online docs](https://api.playfab.com/documentation/admin/method/RevokeInventoryItem)
  """
  @spec revoke_inventory_item(map()) :: {:ok, map} | {:error, String.t}
  definterface revoke_inventory_item(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  

  @doc """
  Decrements the specified virtual currency by the stated amount

  [online docs](https://api.playfab.com/documentation/admin/method/SubtractUserVirtualCurrency)
  """
  @spec subtract_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  definterface subtract_user_virtual_currency(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayerItemManagement) || PlayfabEx.Admin.Default.PlayerItemManagement)
  
end
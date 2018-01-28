defmodule PlayfabEx.Admin.Default.PlayerItemManagement do

  @doc """
  Increments the specified virtual currency by the stated amount

  @link https://api.playfab.com/documentation/admin/method/AddUserVirtualCurrency
  """
  @spec add_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def add_user_virtual_currency(params) do
    fetch("Admin/AddUserVirtualCurrency", params)
  end

  @doc """
  Checks the global count for the limited edition item.

  @link https://api.playfab.com/documentation/admin/method/CheckLimitedEditionItemAvailability
  """
  @spec check_limited_edition_item_availability(map()) :: {:ok, map} | {:error, String.t}
  def check_limited_edition_item_availability(params) do
    fetch("Admin/CheckLimitedEditionItemAvailability", params)
  end

  @doc """
  Retrieves the specified user's current inventory of virtual goods

  @link https://api.playfab.com/documentation/admin/method/GetUserInventory
  """
  @spec get_user_inventory(map()) :: {:ok, map} | {:error, String.t}
  def get_user_inventory(params) do
    fetch("Admin/GetUserInventory", params)
  end

  @doc """
  Adds the specified items to the specified user inventories

  @link https://api.playfab.com/documentation/admin/method/GrantItemsToUsers
  """
  @spec grant_items_to_users(map()) :: {:ok, map} | {:error, String.t}
  def grant_items_to_users(params) do
    fetch("Admin/GrantItemsToUsers", params)
  end

  @doc """
  Increases the global count for the given scarce resource.

  @link https://api.playfab.com/documentation/admin/method/IncrementLimitedEditionItemAvailability
  """
  @spec increment_limited_edition_item_availability(map()) :: {:ok, map} | {:error, String.t}
  def increment_limited_edition_item_availability(params) do
    fetch("Admin/IncrementLimitedEditionItemAvailability", params)
  end

  @doc """
  Revokes access to an item in a user's inventory

  @link https://api.playfab.com/documentation/admin/method/RevokeInventoryItem
  """
  @spec revoke_inventory_item(map()) :: {:ok, map} | {:error, String.t}
  def revoke_inventory_item(params) do
    fetch("Admin/RevokeInventoryItem", params)
  end

  @doc """
  Decrements the specified virtual currency by the stated amount

  @link https://api.playfab.com/documentation/admin/method/SubtractUserVirtualCurrency
  """
  @spec subtract_user_virtual_currency(map()) :: {:ok, map} | {:error, String.t}
  def subtract_user_virtual_currency(params) do
    fetch("Admin/SubtractUserVirtualCurrency", params)
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
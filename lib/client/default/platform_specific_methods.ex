defmodule PlayfabEx.Client.Default.PlatformSpecificMethods do

  @doc """
  Registers the Android device to receive push notifications

  @link https://api.playfab.com/documentation/client/method/AndroidDevicePushNotificationRegistration
  """
  @spec android_device_push_notification_registration(map()) :: {:ok, map} | {:error, String.t}
  def android_device_push_notification_registration(params) do
    fetch("Client/AndroidDevicePushNotificationRegistration", params)
  end

  @doc """
  Registers the iOS device to receive push notifications

  @link https://api.playfab.com/documentation/client/method/RegisterForIOSPushNotification
  """
  @spec register_for_ios_push_notification(map()) :: {:ok, map} | {:error, String.t}
  def register_for_ios_push_notification(params) do
    fetch("Client/RegisterForIOSPushNotification", params)
  end

  @doc """
  Restores all in-app purchases based on the given restore receipt

  @link https://api.playfab.com/documentation/client/method/RestoreIOSPurchases
  """
  @spec restore_ios_purchases(map()) :: {:ok, map} | {:error, String.t}
  def restore_ios_purchases(params) do
    fetch("Client/RestoreIOSPurchases", params)
  end

  @doc """
  Validates with Amazon that the receipt for an Amazon App Store in-app purchase is valid and that it matches the purchased catalog item

  @link https://api.playfab.com/documentation/client/method/ValidateAmazonIAPReceipt
  """
  @spec validate_amazon_iap_receipt(map()) :: {:ok, map} | {:error, String.t}
  def validate_amazon_iap_receipt(params) do
    fetch("Client/ValidateAmazonIAPReceipt", params)
  end

  @doc """
  Validates a Google Play purchase and gives the corresponding item to the player.

  @link https://api.playfab.com/documentation/client/method/ValidateGooglePlayPurchase
  """
  @spec validate_google_play_purchase(map()) :: {:ok, map} | {:error, String.t}
  def validate_google_play_purchase(params) do
    fetch("Client/ValidateGooglePlayPurchase", params)
  end

  @doc """
  Validates with the Apple store that the receipt for an iOS in-app purchase is valid and that it matches the purchased catalog item

  @link https://api.playfab.com/documentation/client/method/ValidateIOSReceipt
  """
  @spec validate_ios_receipt(map()) :: {:ok, map} | {:error, String.t}
  def validate_ios_receipt(params) do
    fetch("Client/ValidateIOSReceipt", params)
  end

  @doc """
  Validates with Windows that the receipt for an Windows App Store in-app purchase is valid and that it matches the purchased catalog item

  @link https://api.playfab.com/documentation/client/method/ValidateWindowsStoreReceipt
  """
  @spec validate_windows_store_receipt(map()) :: {:ok, map} | {:error, String.t}
  def validate_windows_store_receipt(params) do
    fetch("Client/ValidateWindowsStoreReceipt", params)
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
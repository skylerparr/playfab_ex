defmodule PlayfabEx.Client.PlatformSpecificMethods do
  use Interface

  @doc """
  Registers the Android device to receive push notifications

  @link https://api.playfab.com/documentation/client/method/AndroidDevicePushNotificationRegistration
  """
  @spec android_device_push_notification_registration(map()) :: {:ok, map} | {:error, String.t}
  definterface android_device_push_notification_registration(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  

  @doc """
  Registers the iOS device to receive push notifications

  @link https://api.playfab.com/documentation/client/method/RegisterForIOSPushNotification
  """
  @spec register_for_ios_push_notification(map()) :: {:ok, map} | {:error, String.t}
  definterface register_for_ios_push_notification(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  

  @doc """
  Restores all in-app purchases based on the given restore receipt

  @link https://api.playfab.com/documentation/client/method/RestoreIOSPurchases
  """
  @spec restore_ios_purchases(map()) :: {:ok, map} | {:error, String.t}
  definterface restore_ios_purchases(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  

  @doc """
  Validates with Amazon that the receipt for an Amazon App Store in-app purchase is valid and that it matches the purchased catalog item

  @link https://api.playfab.com/documentation/client/method/ValidateAmazonIAPReceipt
  """
  @spec validate_amazon_iap_receipt(map()) :: {:ok, map} | {:error, String.t}
  definterface validate_amazon_iap_receipt(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  

  @doc """
  Validates a Google Play purchase and gives the corresponding item to the player.

  @link https://api.playfab.com/documentation/client/method/ValidateGooglePlayPurchase
  """
  @spec validate_google_play_purchase(map()) :: {:ok, map} | {:error, String.t}
  definterface validate_google_play_purchase(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  

  @doc """
  Validates with the Apple store that the receipt for an iOS in-app purchase is valid and that it matches the purchased catalog item

  @link https://api.playfab.com/documentation/client/method/ValidateIOSReceipt
  """
  @spec validate_ios_receipt(map()) :: {:ok, map} | {:error, String.t}
  definterface validate_ios_receipt(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  

  @doc """
  Validates with Windows that the receipt for an Windows App Store in-app purchase is valid and that it matches the purchased catalog item

  @link https://api.playfab.com/documentation/client/method/ValidateWindowsStoreReceipt
  """
  @spec validate_windows_store_receipt(map()) :: {:ok, map} | {:error, String.t}
  definterface validate_windows_store_receipt(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlatformSpecificMethods) || PlayfabEx.Client.Default.PlatformSpecificMethods)
  
end
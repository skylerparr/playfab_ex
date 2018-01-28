defmodule PlayfabEx.Client.Authentication do
  use Interface

  @doc """
  Gets a Photon custom authentication token that can be used to securely join the player into a Photon room. See  for more details.

  @link https://api.playfab.com/documentation/client/method/GetPhotonAuthenticationToken
  """
  @spec get_photon_authentication_token(map()) :: {:ok, map} | {:error, String.t}
  definterface get_photon_authentication_token(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Requests a challenge from the server to be signed by Windows Hello Passport service to authenticate.

  @link https://api.playfab.com/documentation/client/method/GetTitlePublicKey
  """
  @spec get_title_public_key(map()) :: {:ok, map} | {:error, String.t}
  definterface get_title_public_key(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using the Android device identifier, returning a session identifier that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/GetWindowsHelloChallenge
  """
  @spec get_windows_hello_challenge(map()) :: {:ok, map} | {:error, String.t}
  definterface get_windows_hello_challenge(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using a custom unique identifier generated by the title, returning a session identifier that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/LoginWithAndroidDeviceID
  """
  @spec login_with_android_device_id(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_android_device_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user into the PlayFab account, returning a session identifier that can subsequently be used for API calls which require an authenticated user. Unlike most other login API calls, LoginWithEmailAddress does not permit the  creation of new accounts via the CreateAccountFlag. Email addresses may be used to create accounts via RegisterPlayFabUser.

  @link https://api.playfab.com/documentation/client/method/LoginWithCustomID
  """
  @spec login_with_custom_id(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_custom_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using a Facebook access token, returning a session identifier that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/LoginWithEmailAddress
  """
  @spec login_with_email_address(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_email_address(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using an iOS Game Center player identifier, returning a session identifier that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/LoginWithFacebook
  """
  @spec login_with_facebook(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_facebook(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using their Google account credentials

  @link https://api.playfab.com/documentation/client/method/LoginWithGameCenter
  """
  @spec login_with_game_center(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_game_center(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using the vendor-specific iOS device identifier, returning a session identifier that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/LoginWithGoogleAccount
  """
  @spec login_with_google_account(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_google_account(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using a Kongregate player account.

  @link https://api.playfab.com/documentation/client/method/LoginWithIOSDeviceID
  """
  @spec login_with_ios_device_id(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_ios_device_id(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user into the PlayFab account, returning a session identifier that can subsequently be used for API calls which require an authenticated user. Unlike most other login API calls, LoginWithPlayFab does not permit the  creation of new accounts via the CreateAccountFlag. Username/Password credentials may be used to create accounts via  RegisterPlayFabUser, or added to existing accounts using AddUsernamePassword.

  @link https://api.playfab.com/documentation/client/method/LoginWithKongregate
  """
  @spec login_with_kongregate(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_kongregate(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using a Steam authentication ticket, returning a session identifier that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/LoginWithPlayFab
  """
  @spec login_with_play_fab(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_play_fab(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Signs the user in using a Twitch access token.

  @link https://api.playfab.com/documentation/client/method/LoginWithSteam
  """
  @spec login_with_steam(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_steam(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Completes the Windows Hello login flow by returning the signed value of the challange from GetWindowsHelloChallenge. Windows Hello has a 2 step client to server authentication scheme. Step one is to request from the server a challenge string. Step two is to request the user sign the string via Windows Hello and then send the signed value back to the server.

  @link https://api.playfab.com/documentation/client/method/LoginWithTwitch
  """
  @spec login_with_twitch(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_twitch(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Registers a new Playfab user account, returning a session identifier that can subsequently be used for API calls which require an authenticated user. You must supply either a username or an email address.

  @link https://api.playfab.com/documentation/client/method/LoginWithWindowsHello
  """
  @spec login_with_windows_hello(map()) :: {:ok, map} | {:error, String.t}
  definterface login_with_windows_hello(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Registers a new PlayFab user account using Windows Hello authentication, returning a session ticket  that can subsequently be used for API calls which require an authenticated user

  @link https://api.playfab.com/documentation/client/method/RegisterPlayFabUser
  """
  @spec register_play_fab_user(map()) :: {:ok, map} | {:error, String.t}
  definterface register_play_fab_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  Sets the player's secret if it is not already set. Player secrets are used to sign API requests. To reset a player's secret use the Admin or Server API method SetPlayerSecret.

  @link https://api.playfab.com/documentation/client/method/RegisterWithWindowsHello
  """
  @spec register_with_windows_hello(map()) :: {:ok, map} | {:error, String.t}
  definterface register_with_windows_hello(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  

  @doc """
  

  @link https://api.playfab.com/documentation/client/method/SetPlayerSecret
  """
  @spec set_player_secret(map()) :: {:ok, map} | {:error, String.t}
  definterface set_player_secret(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Authentication) || PlayfabEx.Client.Default.Authentication)
  
end
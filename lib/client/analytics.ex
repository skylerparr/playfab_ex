defmodule PlayfabEx.Client.Analytics do
  use Interface

  @doc """
  Write a PlayStream event to describe the provided player device information. This API method is not designed to be called directly by developers. Each PlayFab client SDK will eventually report this information automatically.

  [online docs](https://api.playfab.com/documentation/client/method/ReportDeviceInfo)
  """
  @spec report_device_info(map()) :: {:ok, map} | {:error, String.t}
  definterface report_device_info(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Analytics) || PlayfabEx.Client.Default.Analytics)
  

  @doc """
  Writes a character-based event into PlayStream.

  [online docs](https://api.playfab.com/documentation/client/method/WriteCharacterEvent)
  """
  @spec write_character_event(map()) :: {:ok, map} | {:error, String.t}
  definterface write_character_event(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Analytics) || PlayfabEx.Client.Default.Analytics)
  

  @doc """
  Writes a player-based event into PlayStream.

  [online docs](https://api.playfab.com/documentation/client/method/WritePlayerEvent)
  """
  @spec write_player_event(map()) :: {:ok, map} | {:error, String.t}
  definterface write_player_event(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Analytics) || PlayfabEx.Client.Default.Analytics)
  

  @doc """
  Writes a title-based event into PlayStream.

  [online docs](https://api.playfab.com/documentation/client/method/WriteTitleEvent)
  """
  @spec write_title_event(map()) :: {:ok, map} | {:error, String.t}
  definterface write_title_event(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Analytics) || PlayfabEx.Client.Default.Analytics)
  
end
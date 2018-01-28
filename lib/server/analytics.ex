defmodule PlayfabEx.Server.Analytics do
  use Interface

  @doc """
  Writes a character-based event into PlayStream.

  @link https://api.playfab.com/documentation/server/method/WriteCharacterEvent
  """
  @spec write_character_event(map()) :: {:ok, map} | {:error, String.t}
  definterface write_character_event(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Analytics) || PlayfabEx.Server.Default.Analytics)
  

  @doc """
  Writes a player-based event into PlayStream.

  @link https://api.playfab.com/documentation/server/method/WritePlayerEvent
  """
  @spec write_player_event(map()) :: {:ok, map} | {:error, String.t}
  definterface write_player_event(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Analytics) || PlayfabEx.Server.Default.Analytics)
  

  @doc """
  Writes a title-based event into PlayStream.

  @link https://api.playfab.com/documentation/server/method/WriteTitleEvent
  """
  @spec write_title_event(map()) :: {:ok, map} | {:error, String.t}
  definterface write_title_event(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Analytics) || PlayfabEx.Server.Default.Analytics)
  
end
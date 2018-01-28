defmodule PlayfabEx.Client.PlayStream do
  use Interface

  @doc """
  List all segments that a player currently belongs to at this moment in time.

  @link https://api.playfab.com/documentation/client/method/GetPlayerSegments
  """
  @spec get_player_segments(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_segments(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayStream) || PlayfabEx.Client.Default.PlayStream)
  

  @doc """
  Get all tags with a given Namespace (optional) from a player profile.

  @link https://api.playfab.com/documentation/client/method/GetPlayerTags
  """
  @spec get_player_tags(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_tags(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.PlayStream) || PlayfabEx.Client.Default.PlayStream)
  
end
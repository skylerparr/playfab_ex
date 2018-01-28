defmodule PlayfabEx.Admin.PlayStream do
  use Interface

  @doc """
  Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.

  @link https://api.playfab.com/documentation/admin/method/AddPlayerTag
  """
  @spec add_player_tag(map()) :: {:ok, map} | {:error, String.t}
  definterface add_player_tag(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayStream) || PlayfabEx.Admin.Default.PlayStream)
  

  @doc """
  Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.

  @link https://api.playfab.com/documentation/admin/method/GetAllSegments
  """
  @spec get_all_segments(map()) :: {:ok, map} | {:error, String.t}
  definterface get_all_segments(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayStream) || PlayfabEx.Admin.Default.PlayStream)
  

  @doc """
  List all segments that a player currently belongs to at this moment in time.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerSegments
  """
  @spec get_player_segments(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_segments(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayStream) || PlayfabEx.Admin.Default.PlayStream)
  

  @doc """
  Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected in the results. AB Test segments are currently not supported by this operation.

  @link https://api.playfab.com/documentation/admin/method/GetPlayersInSegment
  """
  @spec get_players_in_segment(map()) :: {:ok, map} | {:error, String.t}
  definterface get_players_in_segment(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayStream) || PlayfabEx.Admin.Default.PlayStream)
  

  @doc """
  Get all tags with a given Namespace (optional) from a player profile.

  @link https://api.playfab.com/documentation/admin/method/GetPlayerTags
  """
  @spec get_player_tags(map()) :: {:ok, map} | {:error, String.t}
  definterface get_player_tags(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayStream) || PlayfabEx.Admin.Default.PlayStream)
  

  @doc """
  Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.

  @link https://api.playfab.com/documentation/admin/method/RemovePlayerTag
  """
  @spec remove_player_tag(map()) :: {:ok, map} | {:error, String.t}
  definterface remove_player_tag(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.PlayStream) || PlayfabEx.Admin.Default.PlayStream)
  
end
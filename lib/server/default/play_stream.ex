defmodule PlayfabEx.Server.Default.PlayStream do

  @doc """
  Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.

  @link https://api.playfab.com/documentation/server/method/AddPlayerTag
  """
  @spec add_player_tag(map()) :: {:ok, map} | {:error, String.t}
  def add_player_tag(params) do
    fetch("Server/AddPlayerTag", params)
  end

  @doc """
  Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.

  @link https://api.playfab.com/documentation/server/method/GetAllSegments
  """
  @spec get_all_segments(map()) :: {:ok, map} | {:error, String.t}
  def get_all_segments(params) do
    fetch("Server/GetAllSegments", params)
  end

  @doc """
  List all segments that a player currently belongs to at this moment in time.

  @link https://api.playfab.com/documentation/server/method/GetPlayerSegments
  """
  @spec get_player_segments(map()) :: {:ok, map} | {:error, String.t}
  def get_player_segments(params) do
    fetch("Server/GetPlayerSegments", params)
  end

  @doc """
  Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected in the results. AB Test segments are currently not supported by this operation.

  @link https://api.playfab.com/documentation/server/method/GetPlayersInSegment
  """
  @spec get_players_in_segment(map()) :: {:ok, map} | {:error, String.t}
  def get_players_in_segment(params) do
    fetch("Server/GetPlayersInSegment", params)
  end

  @doc """
  Get all tags with a given Namespace (optional) from a player profile.

  @link https://api.playfab.com/documentation/server/method/GetPlayerTags
  """
  @spec get_player_tags(map()) :: {:ok, map} | {:error, String.t}
  def get_player_tags(params) do
    fetch("Server/GetPlayerTags", params)
  end

  @doc """
  Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.

  @link https://api.playfab.com/documentation/server/method/RemovePlayerTag
  """
  @spec remove_player_tag(map()) :: {:ok, map} | {:error, String.t}
  def remove_player_tag(params) do
    fetch("Server/RemovePlayerTag", params)
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
defmodule PlayfabEx.Client.Characters do
  use Interface

  @doc """
  Lists all of the characters that belong to a specific user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.

  @link https://api.playfab.com/documentation/client/method/GetAllUsersCharacters
  """
  @spec get_all_users_characters(map()) :: {:ok, map} | {:error, String.t}
  definterface get_all_users_characters(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  

  @doc """
  Retrieves a list of ranked characters for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/client/method/GetCharacterLeaderboard
  """
  @spec get_character_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_leaderboard(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  

  @doc """
  Retrieves the details of all title-specific statistics for the user

  @link https://api.playfab.com/documentation/client/method/GetCharacterStatistics
  """
  @spec get_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  

  @doc """
  Retrieves a list of ranked characters for the given statistic, centered on the requested Character ID

  @link https://api.playfab.com/documentation/client/method/GetLeaderboardAroundCharacter
  """
  @spec get_leaderboard_around_character(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard_around_character(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  

  @doc """
  Retrieves a list of all of the user's characters for the given statistic.

  @link https://api.playfab.com/documentation/client/method/GetLeaderboardForUserCharacters
  """
  @spec get_leaderboard_for_user_characters(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard_for_user_characters(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  

  @doc """
  Grants the specified character type to the user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.

  @link https://api.playfab.com/documentation/client/method/GrantCharacterToUser
  """
  @spec grant_character_to_user(map()) :: {:ok, map} | {:error, String.t}
  definterface grant_character_to_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  

  @doc """
  Updates the values of the specified title-specific statistics for the specific character. By default, clients are not permitted to update statistics. Developers may override this setting in the Game Manager > Settings > API Features.

  @link https://api.playfab.com/documentation/client/method/UpdateCharacterStatistics
  """
  @spec update_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface update_character_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Characters) || PlayfabEx.Client.Default.Characters)
  
end
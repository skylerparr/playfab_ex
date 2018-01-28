defmodule PlayfabEx.Server.Characters do
  use Interface

  @doc """
  Deletes the specific character ID from the specified user.

  @link https://api.playfab.com/documentation/server/method/DeleteCharacterFromUser
  """
  @spec delete_character_from_user(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_character_from_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Lists all of the characters that belong to a specific user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.

  @link https://api.playfab.com/documentation/server/method/GetAllUsersCharacters
  """
  @spec get_all_users_characters(map()) :: {:ok, map} | {:error, String.t}
  definterface get_all_users_characters(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Retrieves a list of ranked characters for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/server/method/GetCharacterLeaderboard
  """
  @spec get_character_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_leaderboard(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Retrieves the details of all title-specific statistics for the specific character

  @link https://api.playfab.com/documentation/server/method/GetCharacterStatistics
  """
  @spec get_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Retrieves a list of ranked characters for the given statistic, centered on the requested user

  @link https://api.playfab.com/documentation/server/method/GetLeaderboardAroundCharacter
  """
  @spec get_leaderboard_around_character(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard_around_character(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Retrieves a list of all of the user's characters for the given statistic.

  @link https://api.playfab.com/documentation/server/method/GetLeaderboardForUserCharacters
  """
  @spec get_leaderboard_for_user_characters(map()) :: {:ok, map} | {:error, String.t}
  definterface get_leaderboard_for_user_characters(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Grants the specified character type to the user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.

  @link https://api.playfab.com/documentation/server/method/GrantCharacterToUser
  """
  @spec grant_character_to_user(map()) :: {:ok, map} | {:error, String.t}
  definterface grant_character_to_user(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  

  @doc """
  Updates the values of the specified title-specific statistics for the specific character

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterStatistics
  """
  @spec update_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface update_character_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.Characters) || PlayfabEx.Server.Default.Characters)
  
end
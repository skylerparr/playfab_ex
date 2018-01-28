defmodule PlayfabEx.Client.Default.Characters do

  @doc """
  Lists all of the characters that belong to a specific user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.

  @link https://api.playfab.com/documentation/client/method/GetAllUsersCharacters
  """
  @spec get_all_users_characters(map()) :: {:ok, map} | {:error, String.t}
  def get_all_users_characters(params) do
    fetch("Client/GetAllUsersCharacters", params)
  end

  @doc """
  Retrieves a list of ranked characters for the given statistic, starting from the indicated point in the leaderboard

  @link https://api.playfab.com/documentation/client/method/GetCharacterLeaderboard
  """
  @spec get_character_leaderboard(map()) :: {:ok, map} | {:error, String.t}
  def get_character_leaderboard(params) do
    fetch("Client/GetCharacterLeaderboard", params)
  end

  @doc """
  Retrieves the details of all title-specific statistics for the user

  @link https://api.playfab.com/documentation/client/method/GetCharacterStatistics
  """
  @spec get_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  def get_character_statistics(params) do
    fetch("Client/GetCharacterStatistics", params)
  end

  @doc """
  Retrieves a list of ranked characters for the given statistic, centered on the requested Character ID

  @link https://api.playfab.com/documentation/client/method/GetLeaderboardAroundCharacter
  """
  @spec get_leaderboard_around_character(map()) :: {:ok, map} | {:error, String.t}
  def get_leaderboard_around_character(params) do
    fetch("Client/GetLeaderboardAroundCharacter", params)
  end

  @doc """
  Retrieves a list of all of the user's characters for the given statistic.

  @link https://api.playfab.com/documentation/client/method/GetLeaderboardForUserCharacters
  """
  @spec get_leaderboard_for_user_characters(map()) :: {:ok, map} | {:error, String.t}
  def get_leaderboard_for_user_characters(params) do
    fetch("Client/GetLeaderboardForUserCharacters", params)
  end

  @doc """
  Grants the specified character type to the user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.

  @link https://api.playfab.com/documentation/client/method/GrantCharacterToUser
  """
  @spec grant_character_to_user(map()) :: {:ok, map} | {:error, String.t}
  def grant_character_to_user(params) do
    fetch("Client/GrantCharacterToUser", params)
  end

  @doc """
  Updates the values of the specified title-specific statistics for the specific character. By default, clients are not permitted to update statistics. Developers may override this setting in the Game Manager > Settings > API Features.

  @link https://api.playfab.com/documentation/client/method/UpdateCharacterStatistics
  """
  @spec update_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  def update_character_statistics(params) do
    fetch("Client/UpdateCharacterStatistics", params)
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
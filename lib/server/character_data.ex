defmodule PlayfabEx.Server.CharacterData do
  use Interface

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/GetCharacterData
  """
  @spec get_character_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.CharacterData) || PlayfabEx.Server.Default.CharacterData)
  

  @doc """
  Retrieves the title-specific custom data for the user's character which cannot be accessed by the client

  @link https://api.playfab.com/documentation/server/method/GetCharacterInternalData
  """
  @spec get_character_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.CharacterData) || PlayfabEx.Server.Default.CharacterData)
  

  @doc """
  Retrieves the title-specific custom data for the user's character which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/GetCharacterReadOnlyData
  """
  @spec get_character_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.CharacterData) || PlayfabEx.Server.Default.CharacterData)
  

  @doc """
  Updates the title-specific custom data for the user's character which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterData
  """
  @spec update_character_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_character_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.CharacterData) || PlayfabEx.Server.Default.CharacterData)
  

  @doc """
  Updates the title-specific custom data for the user's character which cannot  be accessed by the client

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterInternalData
  """
  @spec update_character_internal_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_character_internal_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.CharacterData) || PlayfabEx.Server.Default.CharacterData)
  

  @doc """
  Updates the title-specific custom data for the user's character which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterReadOnlyData
  """
  @spec update_character_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_character_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.CharacterData) || PlayfabEx.Server.Default.CharacterData)
  
end
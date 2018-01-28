defmodule PlayfabEx.Client.CharacterData do
  use Interface

  @doc """
  Retrieves the title-specific custom data for the character which is readable and writable by the client

  [online docs](https://api.playfab.com/documentation/client/method/GetCharacterData)
  """
  @spec get_character_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.CharacterData) || PlayfabEx.Client.Default.CharacterData)
  

  @doc """
  Retrieves the title-specific custom data for the character which can only be read by the client

  [online docs](https://api.playfab.com/documentation/client/method/GetCharacterReadOnlyData)
  """
  @spec get_character_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  definterface get_character_read_only_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.CharacterData) || PlayfabEx.Client.Default.CharacterData)
  

  @doc """
  Creates and updates the title-specific custom data for the user's character which is readable  and writable by the client

  [online docs](https://api.playfab.com/documentation/client/method/UpdateCharacterData)
  """
  @spec update_character_data(map()) :: {:ok, map} | {:error, String.t}
  definterface update_character_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.CharacterData) || PlayfabEx.Client.Default.CharacterData)
  
end
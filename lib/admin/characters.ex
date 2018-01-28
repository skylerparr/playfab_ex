defmodule PlayfabEx.Admin.Characters do
  use Interface

  @doc """
  Completely removes all statistics for the specified character, for the current game

  [online docs](https://api.playfab.com/documentation/admin/method/ResetCharacterStatistics)
  """
  @spec reset_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  definterface reset_character_statistics(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.Characters) || PlayfabEx.Admin.Default.Characters)
  
end
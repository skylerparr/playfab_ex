defmodule PlayfabEx.Server.PlatformSpecificMethods do
  use Interface

  @doc """
  Awards the specified users the specified Steam achievements

  @link https://api.playfab.com/documentation/server/method/AwardSteamAchievement
  """
  @spec award_steam_achievement(map()) :: {:ok, map} | {:error, String.t}
  definterface award_steam_achievement(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.PlatformSpecificMethods) || PlayfabEx.Server.Default.PlatformSpecificMethods)
  
end
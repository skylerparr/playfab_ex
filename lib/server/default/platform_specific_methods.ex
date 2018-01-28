defmodule PlayfabEx.Server.Default.PlatformSpecificMethods do

  @doc """
  Awards the specified users the specified Steam achievements

  @link https://api.playfab.com/documentation/server/method/AwardSteamAchievement
  """
  @spec award_steam_achievement(map()) :: {:ok, map} | {:error, String.t}
  def award_steam_achievement(params) do
    fetch("Server/AwardSteamAchievement", params)
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
defmodule PlayfabEx.Admin.Default.Characters do

  @doc """
  Completely removes all statistics for the specified character, for the current game

  @link https://api.playfab.com/documentation/admin/method/ResetCharacterStatistics
  """
  @spec reset_character_statistics(map()) :: {:ok, map} | {:error, String.t}
  def reset_character_statistics(params) do
    fetch("Admin/ResetCharacterStatistics", params)
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
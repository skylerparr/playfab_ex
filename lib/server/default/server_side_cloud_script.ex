defmodule PlayfabEx.Server.Default.ServerSideCloudScript do

  @doc """
  Executes a CloudScript function, with the 'currentPlayerId' variable set to the specified PlayFabId parameter value.

  @link https://api.playfab.com/documentation/server/method/ExecuteCloudScript
  """
  @spec execute_cloud_script(map()) :: {:ok, map} | {:error, String.t}
  def execute_cloud_script(params) do
    fetch("Server/ExecuteCloudScript", params)
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
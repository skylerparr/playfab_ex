defmodule PlayfabEx.Admin.Default.SharedGroupData do

  @doc """
  Updates the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/admin/method/SetPublisherData
  """
  @spec set_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  def set_publisher_data(params) do
    fetch("Admin/SetPublisherData", params)
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
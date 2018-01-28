defmodule PlayfabEx.Client.Default.CharacterData do

  @doc """
  Retrieves the title-specific custom data for the character which is readable and writable by the client

  @link https://api.playfab.com/documentation/client/method/GetCharacterData
  """
  @spec get_character_data(map()) :: {:ok, map} | {:error, String.t}
  def get_character_data(params) do
    fetch("Client/GetCharacterData", params)
  end

  @doc """
  Retrieves the title-specific custom data for the character which can only be read by the client

  @link https://api.playfab.com/documentation/client/method/GetCharacterReadOnlyData
  """
  @spec get_character_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def get_character_read_only_data(params) do
    fetch("Client/GetCharacterReadOnlyData", params)
  end

  @doc """
  Creates and updates the title-specific custom data for the user's character which is readable  and writable by the client

  @link https://api.playfab.com/documentation/client/method/UpdateCharacterData
  """
  @spec update_character_data(map()) :: {:ok, map} | {:error, String.t}
  def update_character_data(params) do
    fetch("Client/UpdateCharacterData", params)
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
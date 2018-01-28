defmodule PlayfabEx.Server.Default.CharacterData do

  @doc """
  Retrieves the title-specific custom data for the user which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/GetCharacterData
  """
  @spec get_character_data(map()) :: {:ok, map} | {:error, String.t}
  def get_character_data(params) do
    fetch("Server/GetCharacterData", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user's character which cannot be accessed by the client

  @link https://api.playfab.com/documentation/server/method/GetCharacterInternalData
  """
  @spec get_character_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def get_character_internal_data(params) do
    fetch("Server/GetCharacterInternalData", params)
  end

  @doc """
  Retrieves the title-specific custom data for the user's character which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/GetCharacterReadOnlyData
  """
  @spec get_character_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def get_character_read_only_data(params) do
    fetch("Server/GetCharacterReadOnlyData", params)
  end

  @doc """
  Updates the title-specific custom data for the user's character which is readable and writable by the client

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterData
  """
  @spec update_character_data(map()) :: {:ok, map} | {:error, String.t}
  def update_character_data(params) do
    fetch("Server/UpdateCharacterData", params)
  end

  @doc """
  Updates the title-specific custom data for the user's character which cannot  be accessed by the client

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterInternalData
  """
  @spec update_character_internal_data(map()) :: {:ok, map} | {:error, String.t}
  def update_character_internal_data(params) do
    fetch("Server/UpdateCharacterInternalData", params)
  end

  @doc """
  Updates the title-specific custom data for the user's character which can only be read by the client

  @link https://api.playfab.com/documentation/server/method/UpdateCharacterReadOnlyData
  """
  @spec update_character_read_only_data(map()) :: {:ok, map} | {:error, String.t}
  def update_character_read_only_data(params) do
    fetch("Server/UpdateCharacterReadOnlyData", params)
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
defmodule PlayfabEx.Client.Advertising do
  use Interface

  @doc """
  Attributes an install for advertisment.

  @link https://api.playfab.com/documentation/client/method/AttributeInstall
  """
  @spec attribute_install(map()) :: {:ok, map} | {:error, String.t}
  definterface attribute_install(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.Advertising) || PlayfabEx.Client.Default.Advertising)
  
end
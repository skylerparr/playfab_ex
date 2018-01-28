defmodule PlayfabEx.Admin.SharedGroupData do
  use Interface

  @doc """
  Updates the key-value store of custom publisher settings

  @link https://api.playfab.com/documentation/admin/method/SetPublisherData
  """
  @spec set_publisher_data(map()) :: {:ok, map} | {:error, String.t}
  definterface set_publisher_data(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.SharedGroupData) || PlayfabEx.Admin.Default.SharedGroupData)
  
end
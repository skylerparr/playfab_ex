defmodule PlayfabEx.Server.ServerSideCloudScript do
  use Interface

  @doc """
  Executes a CloudScript function, with the 'currentPlayerId' variable set to the specified PlayFabId parameter value.

  [online docs](https://api.playfab.com/documentation/server/method/ExecuteCloudScript)
  """
  @spec execute_cloud_script(map()) :: {:ok, map} | {:error, String.t}
  definterface execute_cloud_script(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Server.ServerSideCloudScript) || PlayfabEx.Server.Default.ServerSideCloudScript)
  
end
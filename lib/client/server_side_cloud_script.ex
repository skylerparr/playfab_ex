defmodule PlayfabEx.Client.ServerSideCloudScript do
  use Interface

  @doc """
  Executes a CloudScript function, with the 'currentPlayerId' set to the PlayFab ID of the authenticated player.

  [online docs](https://api.playfab.com/documentation/client/method/ExecuteCloudScript)
  """
  @spec execute_cloud_script(map()) :: {:ok, map} | {:error, String.t}
  definterface execute_cloud_script(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Client.ServerSideCloudScript) || PlayfabEx.Client.Default.ServerSideCloudScript)
  
end
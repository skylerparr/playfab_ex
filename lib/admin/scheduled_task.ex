defmodule PlayfabEx.Admin.ScheduledTask do
  use Interface

  @doc """
  Abort an ongoing task instance.

  [online docs](https://api.playfab.com/documentation/admin/method/AbortTaskInstance)
  """
  @spec abort_task_instance(map()) :: {:ok, map} | {:error, String.t}
  definterface abort_task_instance(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Create an ActionsOnPlayersInSegment task, which iterates through all players in a segment to execute action.

  [online docs](https://api.playfab.com/documentation/admin/method/CreateActionsOnPlayersInSegmentTask)
  """
  @spec create_actions_on_players_in_segment_task(map()) :: {:ok, map} | {:error, String.t}
  definterface create_actions_on_players_in_segment_task(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Create a CloudScript task, which can run a CloudScript on a schedule.

  [online docs](https://api.playfab.com/documentation/admin/method/CreateCloudScriptTask)
  """
  @spec create_cloud_script_task(map()) :: {:ok, map} | {:error, String.t}
  definterface create_cloud_script_task(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Delete a task.

  [online docs](https://api.playfab.com/documentation/admin/method/DeleteTask)
  """
  @spec delete_task(map()) :: {:ok, map} | {:error, String.t}
  definterface delete_task(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Get information about a ActionsOnPlayersInSegment task instance.

  [online docs](https://api.playfab.com/documentation/admin/method/GetActionsOnPlayersInSegmentTaskInstance)
  """
  @spec get_actions_on_players_in_segment_task_instance(map()) :: {:ok, map} | {:error, String.t}
  definterface get_actions_on_players_in_segment_task_instance(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Get detail information about a CloudScript task instance.

  [online docs](https://api.playfab.com/documentation/admin/method/GetCloudScriptTaskInstance)
  """
  @spec get_cloud_script_task_instance(map()) :: {:ok, map} | {:error, String.t}
  definterface get_cloud_script_task_instance(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Query for task instances by task, status, or time range.

  [online docs](https://api.playfab.com/documentation/admin/method/GetTaskInstances)
  """
  @spec get_task_instances(map()) :: {:ok, map} | {:error, String.t}
  definterface get_task_instances(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Get definition information on a specified task or all tasks within a title.

  [online docs](https://api.playfab.com/documentation/admin/method/GetTasks)
  """
  @spec get_tasks(map()) :: {:ok, map} | {:error, String.t}
  definterface get_tasks(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Run a task immediately regardless of its schedule.

  [online docs](https://api.playfab.com/documentation/admin/method/RunTask)
  """
  @spec run_task(map()) :: {:ok, map} | {:error, String.t}
  definterface run_task(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  

  @doc """
  Update an existing task.

  [online docs](https://api.playfab.com/documentation/admin/method/UpdateTask)
  """
  @spec update_task(map()) :: {:ok, map} | {:error, String.t}
  definterface update_task(params), to: (Application.get_env(:playfab_ex, PlayfabEx.Admin.ScheduledTask) || PlayfabEx.Admin.Default.ScheduledTask)
  
end
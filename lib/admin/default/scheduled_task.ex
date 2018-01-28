defmodule PlayfabEx.Admin.Default.ScheduledTask do

  @doc """
  Abort an ongoing task instance.

  @link https://api.playfab.com/documentation/admin/method/AbortTaskInstance
  """
  @spec abort_task_instance(map()) :: {:ok, map} | {:error, String.t}
  def abort_task_instance(params) do
    fetch("Admin/AbortTaskInstance", params)
  end

  @doc """
  Create an ActionsOnPlayersInSegment task, which iterates through all players in a segment to execute action.

  @link https://api.playfab.com/documentation/admin/method/CreateActionsOnPlayersInSegmentTask
  """
  @spec create_actions_on_players_in_segment_task(map()) :: {:ok, map} | {:error, String.t}
  def create_actions_on_players_in_segment_task(params) do
    fetch("Admin/CreateActionsOnPlayersInSegmentTask", params)
  end

  @doc """
  Create a CloudScript task, which can run a CloudScript on a schedule.

  @link https://api.playfab.com/documentation/admin/method/CreateCloudScriptTask
  """
  @spec create_cloud_script_task(map()) :: {:ok, map} | {:error, String.t}
  def create_cloud_script_task(params) do
    fetch("Admin/CreateCloudScriptTask", params)
  end

  @doc """
  Delete a task.

  @link https://api.playfab.com/documentation/admin/method/DeleteTask
  """
  @spec delete_task(map()) :: {:ok, map} | {:error, String.t}
  def delete_task(params) do
    fetch("Admin/DeleteTask", params)
  end

  @doc """
  Get information about a ActionsOnPlayersInSegment task instance.

  @link https://api.playfab.com/documentation/admin/method/GetActionsOnPlayersInSegmentTaskInstance
  """
  @spec get_actions_on_players_in_segment_task_instance(map()) :: {:ok, map} | {:error, String.t}
  def get_actions_on_players_in_segment_task_instance(params) do
    fetch("Admin/GetActionsOnPlayersInSegmentTaskInstance", params)
  end

  @doc """
  Get detail information about a CloudScript task instance.

  @link https://api.playfab.com/documentation/admin/method/GetCloudScriptTaskInstance
  """
  @spec get_cloud_script_task_instance(map()) :: {:ok, map} | {:error, String.t}
  def get_cloud_script_task_instance(params) do
    fetch("Admin/GetCloudScriptTaskInstance", params)
  end

  @doc """
  Query for task instances by task, status, or time range.

  @link https://api.playfab.com/documentation/admin/method/GetTaskInstances
  """
  @spec get_task_instances(map()) :: {:ok, map} | {:error, String.t}
  def get_task_instances(params) do
    fetch("Admin/GetTaskInstances", params)
  end

  @doc """
  Get definition information on a specified task or all tasks within a title.

  @link https://api.playfab.com/documentation/admin/method/GetTasks
  """
  @spec get_tasks(map()) :: {:ok, map} | {:error, String.t}
  def get_tasks(params) do
    fetch("Admin/GetTasks", params)
  end

  @doc """
  Run a task immediately regardless of its schedule.

  @link https://api.playfab.com/documentation/admin/method/RunTask
  """
  @spec run_task(map()) :: {:ok, map} | {:error, String.t}
  def run_task(params) do
    fetch("Admin/RunTask", params)
  end

  @doc """
  Update an existing task.

  @link https://api.playfab.com/documentation/admin/method/UpdateTask
  """
  @spec update_task(map()) :: {:ok, map} | {:error, String.t}
  def update_task(params) do
    fetch("Admin/UpdateTask", params)
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
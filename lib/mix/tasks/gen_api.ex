defmodule Mix.Tasks.GenApi do
  use Mix.Task

  def run(_) do
    gen_api()
  end

  def gen_api do
    ["client", "server", "matchmaker", "admin", "playstream"]
    |> Enum.each(&(do_gen_api(&1)))
  end

  defp do_gen_api(name) do
    body = Tesla.get("https://api.playfab.com/documentation/#{name}").body

    {:ok, pid} = Agent.start_link(fn() -> nil end)

    File.mkdir_p("lib/#{name}/default")

    Floki.find(body, ".api")
    |> Enum.into([], &(parse_group(&1, name)))
    |> Enum.each(&(generate(&1, pid, name)))
  end

  defp parse_group({"h4", [_, {"id", group}], detail}, name) do
    module_string = group |> String.replace("-", "")
    module = Macro.camelize("Elixir.PlayfabEx.#{name |> Macro.camelize}.Default." <> module_string) |> String.to_atom
  end
  defp parse_group({_, _, detail}, _) do
    count = Floki.find(detail, "a") |> Enum.count

    for i <- 0..count do
      link = Floki.find(detail, "a")
             |> Floki.attribute("href")
             |> Enum.at(i)

      title = Floki.find(detail, "a")
              |> Enum.at(i)
              |> get_text()

      docs = detail
             |> Floki.find("p")
             |> Enum.at(i)
             |> get_text()

      %{link: link, title: title, docs: docs}
    end
  end
  defp parse_group(_, _), do: nil

  def get_text(nil), do: nil
  def get_text(html), do: html |> Floki.text

  defp generate(data, pid, folder) when is_atom(data) do
    Agent.update(pid, fn(_) -> data |> Atom.to_string |> String.replace("Elixir.", "") end)
  end
  defp generate(detail, pid, folder) do
    current_module = Agent.get(pid, fn(state) -> state end)

    to_write = ["defmodule #{current_module} do"]
    to_write = Enum.reduce(detail, to_write, fn(%{docs: docs, link: link, title: title}, acc) ->
      if(title == nil || String.contains?(title, "http")) do
        acc
      else
        function_name = Macro.underscore(title |> String.replace("IDs", "Ids"))
        acc ++ [~s(
  @doc """
  #{docs}

  @link https://api.playfab.com#{link}
  """
  @spec #{function_name}(map(\)\) :: {:ok, map} | {:error, String.t}
  def #{function_name}(params\) do
    fetch("#{Macro.camelize(folder)}/#{title}", params\)
  end)]
      end
    end)
    to_write = to_write ++ [~S(
  defp fetch(path, params\) do
    string_params = Poison.encode!(params\)
    try do
      response = Tesla.post("https://#{title_id(\)}.playfabapi.com/#{path}", string_params, headers: %{"Content-Type" => "application/json", "X-SecretKey" => secret_key(\)}\)
      |> Map.get(:body\)
      |> Poison.decode!
      {:ok, response}
    rescue
      _ -> {:error, "Unable to fetch data from playfab"}
    end
  end

  defp title_id(\) do
    Application.get_env(:playfab_ex, :title_id\)
  end

  defp secret_key(\) do
    Application.get_env(:playfab_ex, :secret_key\)
  end
    )]
    to_write = to_write ++ ["end"]

    filename = current_module
               |> String.replace("PlayfabEx.", "")
               |> Macro.underscore()
    File.write!("lib/" <> filename <> ".ex", to_write |> Enum.join("\n"))

    delegate_module = String.replace(current_module, "Default.", "")
    to_write = ["defmodule #{delegate_module} do"]
    to_write = to_write ++ ["  use Interface"]
    to_write = Enum.reduce(detail, to_write, fn(%{docs: docs, link: link, title: title}, acc) ->
      if(title == nil || String.contains?(title, "http")) do
        acc
      else
        function_name = Macro.underscore(title |> String.replace("IDs", "Ids"))
        acc ++ [~s(
  @doc """
  #{docs}

  @link https://api.playfab.com#{link}
  """
  @spec #{function_name}(map(\)\) :: {:ok, map} | {:error, String.t}
  definterface #{function_name}(params\), to: (Application.get_env(:playfab_ex, #{delegate_module}\) || #{current_module}\)
  )]
      end
    end)

    to_write = to_write ++ ["end"]

    filename = delegate_module
               |> String.replace("PlayfabEx.", "")
               |> Macro.underscore()
    File.write!("lib/" <> filename <> ".ex", to_write |> Enum.join("\n"))
  end

end

# PlayfabEx

Allows developers to interact with the playfab api.

Just need to set up a couple configuration variables.

```
config :playfab_ex, :title_id, YourPlayfabTitleId
config :playfab_ex, :secret_key, YourPlayfabSecretKey
```

You are free to override the default implementations via

```
config :playfab_ex, PlayfabEx.Server.AccountManagement, MyApp.MyAccountManagementOverride
```

or you can override at runtime:

```
Application.put_env(:playfab_ex, PlayfabEx.Server.AccountManagement, MyApp.MyAccountManagementOverride)
```

Feedback welcome.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `playfab_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:playfab_ex, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/playfab_ex](https://hexdocs.pm/playfab_ex).


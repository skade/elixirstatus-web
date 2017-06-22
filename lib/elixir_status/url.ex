defmodule ElixirStatus.URL do
  @moduledoc """
    Converts URLs.
  """

  @base_url Application.get_env(:elixir_status, :base_url)

  @doc "Returns an absolute URL for a given +path+."
  def absolute(path), do: @base_url |> URI.merge(path) |> URI.to_string
end

defmodule ElixirStatus.Meta do
  @moduledoc """
    Converts URLs.
  """

  @description """
    Rust news and status updates from the community
  """

  def html_title, do: @description
  def html_description, do: @description
  def rss_title, do: @description
end

defmodule Sugardb.PageController do
  use Sugardb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

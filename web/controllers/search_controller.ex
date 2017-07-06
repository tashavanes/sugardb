defmodule Sugardb.FilterController do
  use Sugardb.Web, :controller

  alias Sugardb.Result


   def filter(conn, %{"id" => id}) do
    result = Repo.get!(Result, id)
    render(conn, "filter.html", result: result)
  end


end

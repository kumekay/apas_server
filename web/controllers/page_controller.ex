defmodule ApasServer.PageController do
  alias ApasServer.Repo
  use ApasServer.Web, :controller


  def index(conn, _params) do

    pourings = from(p in ApasServer.Pouring, select: [p.volume, p.inserted_at]) |> Repo.all

    bottle_changes = from(bc in ApasServer.BottleChange, select:  bc.inserted_at) |> Repo.all

    last_bottle_change = from(bc in ApasServer.BottleChange, order_by: [desc: bc.inserted_at], select: bc.inserted_at, limit: 1) |> ApasServer.Repo.one

    total = from(p in ApasServer.Pouring, where: p.inserted_at >= ^last_bottle_change , select: sum(p.volume)) |> ApasServer.Repo.one

    render conn, "index.html",
        total: total,
        pourings: pourings,
        bottle_changes: bottle_changes
  end
end

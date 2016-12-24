defmodule ApasServer.BottleChangeController do
    use ApasServer.Web, :controller

    @moduledoc false

    def create(conn, _) do
        ApasServer.Repo.insert!(%ApasServer.BottleChange{})
        json conn, %{status: :ok}
    end
end

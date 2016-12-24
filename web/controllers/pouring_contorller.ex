defmodule ApasServer.PouringContorller do
    use ApasServer.Web, :controller
    @moduledoc false

    def create(conn, %{"volume" => volume}) do
        ApasServer.Repo.insert!(%ApasServer.Pouring{volume: String.to_integer(volume)})
        json conn, %{status: :ok}
    end
end
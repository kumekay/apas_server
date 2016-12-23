defmodule ApasServer.Repo.Migrations.CreateBottleChange do
  use Ecto.Migration

  def change do
    create table(:bottle_changes) do

      timestamps()
    end

  end
end

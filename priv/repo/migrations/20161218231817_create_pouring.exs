defmodule ApasServer.Repo.Migrations.CreatePouring do
  use Ecto.Migration

  def change do
    create table(:pourings) do
      add :volume, :integer

      timestamps()
    end

  end
end

defmodule ApasServer.Pouring do
  use ApasServer.Web, :model

  schema "pourings" do
    field :volume, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:volume])
    |> validate_required([:volume])
  end
end

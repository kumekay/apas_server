defmodule ApasServer.BottleChangeTest do
  use ApasServer.ModelCase

  alias ApasServer.BottleChange

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = BottleChange.changeset(%BottleChange{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = BottleChange.changeset(%BottleChange{}, @invalid_attrs)
    refute changeset.valid?
  end
end

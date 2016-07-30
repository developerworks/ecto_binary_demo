defmodule Bytea.Test do
  use Bytea.Web, :model
  alias Bytea.Repo

  schema "tests" do
    field :photo, :binary

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:photo])
    |> validate_required([:photo])
  end

  def insert(map) do
    Map.merge(%__MODULE__{}, map) |> Repo.insert
  end

  def test_insert do
    {:ok, contents} = File.read("/tmp/FB7D22A5-924E-4DA5-AC93-5D815FA1AEA8.png")
    insert(%{photo: contents})
  end
end

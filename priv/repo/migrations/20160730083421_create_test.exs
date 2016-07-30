defmodule Bytea.Repo.Migrations.CreateTest do
  use Ecto.Migration

  def change do
    create table(:tests) do
      add :photo, :binary

      timestamps()
    end

  end
end

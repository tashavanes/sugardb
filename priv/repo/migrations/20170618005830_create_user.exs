defmodule Sugardb.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :firstname, :string
      add :lastname, :string
      add :age, :integer
      add :sex, :string

      timestamps()
    end

  end
end

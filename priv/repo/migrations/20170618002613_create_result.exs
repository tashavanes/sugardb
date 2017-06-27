defmodule Sugardb.Repo.Migrations.CreateResult do
  use Ecto.Migration

  def change do
    create table(:results) do
      add :value, :integer
      add :type, :string
      add :date, :date
      add :time, :time
      add :notes, :text

      timestamps()
    end

  end
end

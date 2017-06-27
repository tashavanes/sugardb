defmodule Sugardb.User do
  use Sugardb.Web, :model

  schema "users" do
    field :firstname, :string
    field :lastname, :string
    field :age, :integer
    field :sex, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:firstname, :lastname, :age, :sex])
    |> validate_required([:firstname, :lastname, :age, :sex])
  end
end

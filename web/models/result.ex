defmodule Sugardb.Result do
  use Sugardb.Web, :model

  schema "results" do
    field :value, :integer
    field :type, :string
    field :date, Ecto.Date
    field :time, Ecto.Time
    field :notes, :string
    field :user_id, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:value, :type, :date, :time, :notes, :user_id])
    |> validate_required([:value, :type, :date, :time, :notes, :user_id])
  end
end

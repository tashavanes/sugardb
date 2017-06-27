defmodule Sugardb.ResultTest do
  use Sugardb.ModelCase

  alias Sugardb.Result

  @valid_attrs %{date: %{day: 17, month: 4, year: 2010}, notes: "some content", time: %{hour: 14, min: 0, sec: 0}, type: "some content", value: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Result.changeset(%Result{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Result.changeset(%Result{}, @invalid_attrs)
    refute changeset.valid?
  end
end

defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Jose", username: "josevalim"},
      %User{id: "2", name: "Corentin", username: "little-dude"}
    ]
  end

  def get_user(id) do
    list_users() |> Enum.find(fn user -> user.id == id end)
  end

  def get_user_by(params) do
    list_users()
    |> Enum.find(fn user ->
      params |> Enum.all?(fn {key, val} -> Map.get(user, key) == val end)
    end)
  end
end

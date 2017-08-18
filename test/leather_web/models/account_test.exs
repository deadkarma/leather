defmodule Leather.AccountTest do
  use Leather.DataCase

  test "A new account" do
    {:ok, user} = %Leather.User{}
                  |> Leather.User.changeset(%{username: "lebowski"})
                  |> Repo.insert

    {:ok, _account} = Leather.Account.changeset(
                        %Leather.Account{},
                        %{account_id: "abc123", name: "Some Bank Account", user_id: user.id}
                      )
                      |> Repo.insert
  end
end
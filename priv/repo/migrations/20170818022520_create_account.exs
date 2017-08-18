defmodule Leather.Repo.Migrations.CreateAccount do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :user_id, references(:users)
      add :account_id, :string
      add :balance_available, :integer
      add :balance_current, :integer
      add :balance_limit, :integer
      add :name, :string
      add :official_name, :string
      add :type, :string
      add :subtype, :string
      add :mask, :integer
      timestamps()
    end

    create index(:accounts, [:user_id])
  end
end

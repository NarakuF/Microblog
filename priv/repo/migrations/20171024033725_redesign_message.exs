defmodule Microblog.Repo.Migrations.RedesignMessage do
  use Ecto.Migration

  def change do
    alter table("messages") do
      remove :title
    end

    rename table("messages"), :desc, to: :content
  end
end

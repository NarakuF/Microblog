defmodule Microblog.Blog.Follow do
  use Ecto.Schema
  import Ecto.Changeset
  alias Microblog.Blog.Follow


  schema "follows" do
    belongs_to :follower, Microblog.Accounts.User, foreign_key: :follower_id
    belongs_to :following_user, Microblog.Accounts.User, foreign_key: :following_user_id

    timestamps()
  end

  @doc false
  def changeset(%Follow{} = follow, attrs) do
    follow
    |> cast(attrs, [:follower_id, :following_user_id])
    |> validate_required([:follower_id, :following_user_id])
  end
end

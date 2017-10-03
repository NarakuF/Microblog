defmodule Microblog.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Microblog.Accounts.User


  schema "users" do
    field :email, :string
    has_many :messages, Microblog.Blog.Message
    has_many :followers, Microblog.Blog.Follow, foreign_key: :follower_id
    has_many :following_users, Microblog.Blog.Follow, foreign_key: :following_user_id

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
  end
end

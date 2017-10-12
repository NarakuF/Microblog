defmodule Microblog.Blog.Message do
  use Ecto.Schema
  import Ecto.Changeset
  alias Microblog.Blog.Message


  schema "messages" do
    field :desc, :string
    field :title, :string
    belongs_to :user, Microblog.Accounts.User
    # has_many :likes, Like

    timestamps()
  end

  @doc false
  def changeset(%Message{} = message, attrs) do
    message
    |> cast(attrs, [:title, :desc, :user_id])
    |> validate_required([:title, :desc, :user_id])
  end
end

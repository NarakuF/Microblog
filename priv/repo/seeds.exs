# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Microblog.Repo.insert!(%Microblog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Microblog.Repo

alias Microblog.Blog.Like
Repo.delete_all(Like)

alias Microblog.Accounts.User
Repo.delete_all(User)

# liu = Repo.insert!(%User{email: "liu.gu@husky.neu.edu" })
# lgd = Repo.insert!(%User{email: "lgd9598@gmail.com" })

alias Microblog.Blog.Message
Repo.delete_all(Message)

# Repo.insert!(%Message{content: "Hello World!", user_id: liu.id })
# Repo.insert!(%Message{content: "Today is Monday.", user_id: lgd.id })

defmodule MicroblogWeb.SessionController do
  use MicroblogWeb, :controller

  alias Microblog.Accounts.User

  def login(conn, %{"email" => email, "password" => password}) do
    user = User.get_and_auth_user(email, password)

    if user do
      conn
      |> put_session(:user_id, user.id)
      |> put_flash(:info, "Logged in as #{user.email}")
      |> redirect(to: message_path(conn, :index))
    else
      conn
      |> put_session(:user_id, nil)
      |> put_flash(:error, "Wrong email or password")
      |> redirect(to: message_path(conn, :index))
    end
  end

  def logout(conn, _args) do
    conn
    |> put_session(:user_id, nil)
    |> put_flash(:info, "Logged out")
    |> redirect(to: message_path(conn, :index))
  end
end

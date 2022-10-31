defmodule PasswordGeneratorWeb.PageController do
  use PasswordGeneratorWeb, :controller

  def index(conn, _params) do
    password_lengths = [
      Weak: Enum.map(6..15, & &1),
      Strong: Enum.map(16..88, & &1),
      Unbeliavable: [100, 150]
    ]

    password = ""

    render(conn,
    "index.html",
    password_lengths: password_lengths,
    password: password)
  end

  def generate(conn, %{"password"=> password_params}) do

  end

end

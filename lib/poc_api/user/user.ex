defmodule PocApi.User.User do
  defstruct [:id, :email, :password]

  def new_user(email, password) do
    %PocApi.User.User{id: nil, email: email, password: password}
  end

  def set_id(user, id) do
    %{user | id: id}
  end
end

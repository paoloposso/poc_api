defmodule PocApi.Infrastructure.MockDB.UserRepository do

  @behaviour PocApi.User.Repository
  @spec insert_user(any, any) :: {:error, any} | {:ok, 1234}
  def insert_user(email, _password) do
    if email === "error@error.com" do
      {:error, "error"}
    else
      {:ok, 1234}
    end
  end
end

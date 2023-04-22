defmodule PocApi.User.Service do

  @spec insert(PocApi.User.Repository.t, any, any) :: any
  def insert(repo, email, password) do
    repo.insert_user(email, password)
  end
end

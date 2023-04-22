defmodule PocApi.User.Repository do
  @callback insert_user(email :: String.t, password :: String.t) :: {:ok, integer} | {:error, any}
end

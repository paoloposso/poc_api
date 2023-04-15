defmodule PocApi.Router do
  use Plug.Router

  plug(Plug.Logger)
  plug(:match)
  plug(
    Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason
  )
  plug(:dispatch)

  get("/", do: conn |> send_resp(200, "OK"))

  get("/characters", do: send_resp(conn, 200, retrieve_by_id(conn.params["id"])))

  match(_, do: send_resp(conn, 404, "Not Found"))

  def retrieve_by_id(id) do
    characters_map = %{"22" => "Kabal", "51" => "Scorpion", "90" => "Sub-Zero"}
    characters_map[id]
  end
end

defmodule FunWithFlags.UI.Router do
  use Plug.Router
  alias FunWithFlags.UI.Templates

  plug Plug.Static,
    at: "/assets",
    from: Path.expand("./assets/", __DIR__)


  plug :match
  plug :dispatch


  get "/" do
    conn
    |> redirect_to("/flags")
  end


  get "/flags" do
    {:ok, flags} = FunWithFlags.all_flags
    body = Templates.index(flags: flags)

    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, body)
  end


  get "/flags/:name" do
    {:ok, flag} = FunWithFlags.SimpleStore.lookup(String.to_atom(name))
    body = Templates.details(flag: flag)
    
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, body)
  end


  match _ do
    send_resp(conn, 404, "")
  end


  defp redirect_to(conn, uri) do
    conn
    |> put_resp_header("location", uri)
    |> put_resp_content_type("text/html")
    |> send_resp(302, "<html><body>You are being <a href=\"#{uri}\">redirected</a>.</body></html>")
  end
end
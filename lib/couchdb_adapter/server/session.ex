defmodule CouchDB.Server.Session do

  import CouchDB.Environment
  import CouchDB.HTTP

  alias CouchDB.HTTP.Urls

  def info do
    CouchDB.client |> CouchDB.get(Urls.Server.session)
  end

  def info(conn) do
    conn |> CouchDB.get(Urls.Server.session)
  end

  def login(name \\ server_admin()[:user], password \\ server_admin()[:password]) do
    user_credentials = %{
      name: name,
      password: password
    }
    srv_conn() |> CouchDB.post(Urls.Server.session(), user_credentials)
  end

  def logout do
    srv_conn() |> CouchDB.delete(Urls.Server.session)
  end

end

defmodule CouchDB.Server do

  import CouchDB.HTTP

  alias CouchDB.HTTP.Urls

  def info do
    CouchDB.client() |> CouchDB.get(Urls.Server.info)
  end

  def active_tasks do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.active_tasks)
  end

  def all_dbs do
    CouchDB.client() |> CouchDB.get(Urls.Server.all_dbs)
  end

  def log do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.log)
  end

  def db_updates do
    CouchDB.client() |> CouchDB.get(Urls.Server.db_updates)
  end

  def membership do
    CouchDB.client() |> CouchDB.get(Urls.Server.membership)
  end

  def stats do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.stats)
  end

  def favicon do
    CouchDB.client() |> CouchDB.get(Urls.Server.favicon)
  end

  def uuids(count \\ 1) do
    CouchDB.client() |> CouchDB.get(Urls.Server.uuids(count))
  end

  def replicate do
    srv_conn() |> CouchDB.post(Urls.Server.replicate)
  end

  def restart do
    srv_conn() |> CouchDB.post(Urls.Server.restart)
  end

end

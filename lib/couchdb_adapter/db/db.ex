defmodule CouchDB.DB do

  alias CouchDB.HTTP.Urls

  def check do
    CouchDB.client() |> CouchDB.head(Urls.DB.check)
  end

  def info do
    CouchDB.client() |> CouchDB.get(Urls.DB.info)
  end

  def all_docs do
    CouchDB.client() |> CouchDB.get(Urls.DB.all_docs)
  end

  def all_docs(conn) do
    conn |> CouchDB.get(Urls.DB.all_docs)
  end

  def changes do
    CouchDB.client() |> CouchDB.get(Urls.DB.changes)
  end

end

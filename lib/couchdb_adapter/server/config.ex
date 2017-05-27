defmodule CouchDB.Server.Config do

  alias CouchDB.HTTP.Urls

  def get_config do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.config)
  end

  def get_config(section) do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.config(section))
  end

  def get_config(section, key) do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.config(section, key))
  end

  def set_config(section, key ,value) do
    CouchDB.client(:admin) |> CouchDB.put(Urls.Server.config(section, key), value)
  end

  def delete_config(section, key) do
    CouchDB.client(:admin) |> CouchDB.delete(Urls.Server.config(section, key))
  end

end

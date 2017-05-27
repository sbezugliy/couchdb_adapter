defmodule CouchDB.Server.Node do

  alias CouchDB.HTTP.Urls

  def nodes do
    CouchDB.client(:admin) |> CouchDB.get(Urls.Server.nodes())
  end

end

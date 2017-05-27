defmodule CouchDB.HTTP.Urls.DB do

  import CouchDB.HTTP

    def check do
      "/" <> db_conn()
    end

    def info do
      "/" <> db_conn() <> "/"
    end

    def all_docs do
      "/" <> db_conn() <> "/_all_docs"
    end

    def changes do
      "/" <> db_conn() <> "/_changes"
    end
end

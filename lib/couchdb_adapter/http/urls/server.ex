defmodule CouchDB.HTTP.Urls.Server do

  import CouchDB.Environment

  def info, do: "/"

  def all_dbs, do: "/_all_dbs"

  def active_tasks, do: "/_active_tasks"

  def config, do: admin_path() <> "/_config"

  def config(section), do: config() <> "/" <> section

  def config(section, key), do: config(section) <> "/" <> key

  def db_updates, do: "/_db_updates"

  def log, do: "/_log"

  def membership, do: "/_membership"

  def stats, do: "/_stats"

  def utils, do: "/_utils/"

  def favicon, do: "/favicon.ico"

  def uuids(count \\ 1), do: "/_uuids?count=" <> to_string(count)

  def replicate, do: "/_replicate"

  def restart, do: "/_restart"

  def session, do: "/_session"

  def nodes, do: "/_nodes"

  def nodes(node_name), do: "/_nodes/" <> to_string(node_name)

end

use Mix.Config

config :couchdb_adapter,
  protocol:      "https",
  hostname:      "localhost",
  port:          "5984",
  database: "couchdb_connector_prod",

  auth_type: :basic,

  server_admin: :true,
  server_admin_username: "couchadmin",
  server_admin_password: "GHtWtCCbz",

  db_admin: :true,
  db_admin_username: "dbadmin",
  db_admin_password: "secret",

  db_user: :true,
  db_user_username: "dbuser",
  db_user_password: "secret"

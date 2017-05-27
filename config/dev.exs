use Mix.Config

config :couchdb_adapter,
  protocol:      "http",
  hostname:      "172.17.0.2",
  port:          "5984",
  admin_port:    "5986",
  database: "emporium_dev",
  cluster: true,
  cluster_master_hostname: "172.17.0.2",
  node_name: "node1@172.16.0.2",

  auth_type: :oauth,

  #server_admin: :true,
  username: "admin",
  password: "supersecret",

  # OAuth 1.0 credentials
  consumer_key:     "19dce97e27ea2b547608c05a31a6307f",
  consumer_secret:  "6b3ca1c299c6159a6324bd4ff5f23260",
  token:            "a627725391bbf4c990f44f3cad3bbcfb",
  token_secret:     "4763fb7e7cf27a0daf552abf0d419342"

# ToDo: maybe I shouldn't separate users into groups by roles in client
  # db_admin: :true,
  # db_admin_username: "dbadmin",
  # db_admin_password: "secret",
  #
  # db_user: :true,
  # db_user_username: "dbuser",
  # db_user_password: "secret"

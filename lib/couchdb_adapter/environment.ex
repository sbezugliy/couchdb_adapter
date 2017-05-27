defmodule CouchDB.Environment do
  @moduledoc """
  Environment module for CouchDB adapter.

  Reads configuration data from CouchDB Adapter / Phoenix environment
  confirugation files or receives from COUCHDB_* environment variables from OS.

  Defining custom types and variables

  Exactly:

    hostname:      "localhost"
    protocol:      "https"
    port:          "5984"
    database_name: "db_name"

    auth_type: :basic #possible: :basic, :cookie (aka session auth), :oauth

    server_admin: :true
    server_admin_username: "servadmin"
    server_admin_password: "secret"

    db_admin: :true
    db_admin_username: "dbadmin"
    db_admin_password: "secret"

    db_user: :true
    db_user_username: "dbadmin"
    db_user_password: "secret"
  """

  @doc """
  Reading connection credentials from environment.

  ## Examples

      iex> CouchDB.conn
      :world

  """

  @typedoc "CouchDB connection credentials."
  @type conn :: %{protocol: String.t, hostname: String.t,
                           database: String.t, port: non_neg_integer,
                           user: String.t, password: String.t}

  @typedoc "CouchDB user role is just a string, user_roles a list of strings."
  @type user_roles :: [String.t]

  @typedoc "HTTP headers are modeled as a list of name-value tuples"
  @type headers :: [{String.t, String.t}]

  @typedoc "Username and password for basic authentication"
  @type basic_auth :: %{user: String.t, password: String.t}

  @typedoc "Username and password for basic authentication"
  @type auth_type :: [String.t]

  @typedoc "User information"
  @type user_info :: %{user: String.t, password: String.t}

  def dbprops do
      %{
      protocol:     Application.get_env(:couchdb_adapter, :protocol),
      hostname:     Application.get_env(:couchdb_adapter, :hostname),
      port:         Application.get_env(:couchdb_adapter, :port),
      admin_port:   Application.get_env(:couchdb_adapter, :admin_port),
      database:     Application.get_env(:couchdb_adapter, :database),
      cluster:      Application.get_env(:couchdb_adapter, :cluster),
      node_name:    Application.get_env(:couchdb_adapter, :node_name)
    }
  end

  def oauth_creds do
    %{
      consumer_key:     Application.get_env(:couchdb_adapter, :consumer_key),
      consumer_secret:  Application.get_env(:couchdb_adapter, :consumer_secret),
      token:            Application.get_env(:couchdb_adapter, :token),
      token_secret:     Application.get_env(:couchdb_adapter, :token_secret)
    }
  end

  def base_url do
    dbprops()[:protocol] <> "://" <> dbprops()[:hostname] <> ":" <> dbprops()[:port]
  end

  def admin_url do
    dbprops()[:protocol] <> "://" <> dbprops()[:hostname] <> ":" <> dbprops()[:admin_port]
  end

  def server_admin do
      %{
      user:       Application.get_env(:couchdb_adapter, :username),
      password:   Application.get_env(:couchdb_adapter, :password)}
  end

  def auth_type do
     Application.get_env(:couchdb_adapter, :auth_type)
  end

  def admin_path do
    case dbprops()[:cluster] do
      :false ->
        ""
      :true ->
        "/_nodes/" <> dbprops()[:node_name]
    end
  end

end

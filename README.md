# couchdb_adapter

Apache CouchDB RESP API client for Elixir.

__WIP!__

ECTO compatibility impossible cause CouchDB is document oriented database.

* Supported versions:
  - Elixir: 1.4.2
  - CouchDB: 2.0.0

# Overview

Apache CouchDB REST API client for Elixir.

### Features

#### Realised:
* HTTP Authentication:
  * Basic Auth
  * Cookie Auth
  * OAuth

#### WIP:

* Cover all API interfaces with documentation
* Mix tasks and configuration to deploy single node or cluster configuration after __clean__ installation of CouchDB while Admin Party is go on. If server administrator was created and Admin Party has over configuration and cluster setup should be mad manually.
* Clusters
* Users management
* Server related API
* Database related API
* Design related API
* View related API
* Cover code by specs and ExUnit tests

#### Featured:
* HTTP Authentication:
  * Proxy Auth

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `couchdb_adapter` to your list of dependencies in `mix.exs`:

```elixir
  def deps do
    [{:couchdb_adapter, "~> 0.1.0"}]
  end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/couchdb_adapter](https://hexdocs.pm/couchdb_adapter).

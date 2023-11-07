defmodule FallWeb.Schema do
  use Absinthe.Schema
  use Absinthe.Relay.Schema, :classic

  import_types(FallWeb.Schema.Leaves)

  alias FallWeb.Resolvers

  query do
    @desc "Get all leaves"
    field :leaves, list_of(:leaf) do
      resolve(&FallWeb.Resolvers.Leaf.list_leaves/3)
    end
  end
end

defmodule FallWeb.Schema.Leaves do
  use Absinthe.Schema.Notation
  use Absinthe.Relay.Schema.Notation, :modern

  node interface do
    resolve_type(fn
      %{}, _ ->
        :leaf
      _, _ ->
        nil
    end)
  end

  node object(:leaf) do
    field :title, :string
    field :colour, :string
  end
end

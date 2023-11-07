defmodule FallWeb.Resolvers.Leaf do
  def list_leaves(_parent, _args, _resolution) do
    leaves = [
      %{id: "maple", title: "Maple", colour: "Red"},
      %{id: "ginko", title: "Ginko", colour: "Yellow"}
    ]

    {:ok, leaves}
  end
end

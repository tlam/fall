defmodule Fall.Repo do
  use Ecto.Repo,
    otp_app: :fall,
    adapter: Ecto.Adapters.Postgres
end

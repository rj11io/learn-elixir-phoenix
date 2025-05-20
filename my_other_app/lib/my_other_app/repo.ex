defmodule MyOtherApp.Repo do
  use Ecto.Repo,
    otp_app: :my_other_app,
    adapter: Ecto.Adapters.Postgres
end

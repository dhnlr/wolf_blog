defmodule WolfBlog.Repo do
  use Ecto.Repo,
    otp_app: :wolf_blog,
    adapter: Ecto.Adapters.Postgres
end

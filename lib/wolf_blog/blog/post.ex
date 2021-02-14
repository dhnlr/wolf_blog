defmodule WolfBlog.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias WolfBlog.Blog.Post # add this to tell the struct what post is

  schema "posts" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
    |> unique_constraint(:title)
  end
end

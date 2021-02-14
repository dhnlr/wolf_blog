defmodule WolfBlogWeb.Types.PostTypes do
  use Absinthe.Schema.Notation

  @desc "Post fields that can be interrogated (get)"
  object :post do
    @desc "Post id"
    field :id, :id
    @desc "Title post"
    field :title, :string
    @desc "Body of post"
    field :body, :string
  end
end

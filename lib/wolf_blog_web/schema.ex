defmodule WolfBlogWeb.Schema do
  use Absinthe.Schema
  alias WolfBlogWeb.Resolvers.PostResolver

  import_types WolfBlogWeb.Types.PostTypes

  query do
    @desc "List of all post"
    field :posts, list_of(:post) do
      resolve &PostResolver.list_all_posts/3
    end
  end
end

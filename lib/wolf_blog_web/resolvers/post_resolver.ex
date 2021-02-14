defmodule WolfBlogWeb.Resolvers.PostResolver do
  alias WolfBlog.Blog

  def list_all_posts(_, _, _) do
    {:ok, Blog.list_posts()} #here we use an ok tuple
  end
end

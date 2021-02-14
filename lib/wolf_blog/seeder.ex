defmodule WolfBlog.Seeder do
  def power_up() do

    alias WolfBlog.Blog.Post
    alias WolfBlog.Repo

    absinthe_title =  "Absinthe is great"

    absinthe_body =  "Absinthe can really make working with Phoenix and Graphql much easier.The big advantage is that you can also test the code."

    _article = %Post{title: absinthe_title , body: absinthe_body} |> Repo.insert() #Bring the values from title and body and create
                                                                  # an article that get's added to the DB

    :ok
  end
end

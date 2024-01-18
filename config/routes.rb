# frozen_string_literal: true

module HanamiBlogApp
  class Routes < Hanami::Routes
    root { "Hello from Hanami" }

    # posts
    get "/posts/new", to: "posts.new", as: :new_post
    post "/posts", to: "posts.create", as: :create_post
    get "/posts/:id", to: "posts.show", as: :show_post
    get "/posts", to: "posts.index", as: :posts
  end
end

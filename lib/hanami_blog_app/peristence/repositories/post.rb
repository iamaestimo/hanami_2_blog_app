module HanamiBlogApp
  module Persistence
    module Repositories
      class Post < ROM::Repository[:posts]
        # create, update, delete post
        commands :create, update: :by_pk, delete: :by_pk

        # find all posts
        def all
          posts.to_a
        end

        # find single post
        def find(id)
          posts.by_pk(id).one!
        end
      end
    end
  end
end

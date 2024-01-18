# frozen_string_literal: true

module HanamiBlogApp
  module Views
    module Posts
      class Index < HanamiBlogApp::View
        include Deps[repo: "persistence/repositories/post"]


        expose :posts do
          repo.relations[:posts]
            .select(:title)
            .order(:title)
            .to_a
        end
      end
    end
  end
end


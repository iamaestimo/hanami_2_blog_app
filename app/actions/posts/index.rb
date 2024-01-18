# frozen_string_literal: true

module HanamiBlogApp
  module Actions
    module Posts
      class Index < HanamiBlogApp::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end

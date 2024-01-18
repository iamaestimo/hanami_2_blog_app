# frozen_string_literal: true

module HanamiBlogApp
  module Actions
    module Posts
      class Show < HanamiBlogApp::Action
        def handle(request, response)
          response.render(view, id: request.params[:id])
        end
      end
    end
  end
end

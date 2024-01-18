module HanamiBlogApp
  module Actions
    module Posts
      class Create < HanamiBlogApp::Action
        def handle(request, response)
          include Deps[repo: "persistence/repositories/post"]

          params do
            required(:post).hash do
              required(:title).filled(:string)
              required(:body).filled(:string)
            end
          end

          def handle(request, response)
            if request.params.valid?
              book = rom.relations[:posts].changeset(:create, request.params[:post]).commit

              response.flash[:notice] = "Post created successfully"
              response.redirect_to routes.path(:show_post, id: post[:id])
            else
              response.flash.now[:alert] = "There was a problem creating the post!"
            end
          end
        end
      end
    end
  end
end

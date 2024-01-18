# frozen_string_literal: true

require "hanami"

module HanamiBlogApp
  class App < Hanami::App
    config.actions.sessions = :cookie, {
      key: "hanami_blog_app.session",
      secret: settings.session_secret,
      expire_after: 60*60*24*365
    }
  end
end

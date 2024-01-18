# frozen_string_literal: true

module HanamiBlogApp
  class Settings < Hanami::Settings
    setting :database_url, constructor: Types::String
    setting :session_secret, constructor: Types::String
  end
end

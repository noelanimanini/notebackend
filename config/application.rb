require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Notebackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.api_only = true

    # Rack cors configuration
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        # Defines the urls from which to allow ajax request
        origins '*'
        # Defines which resources and http verbs are allowed
        # Documentation for the options verb: https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/OPTIONS
        resource '*', :headers => :any, :methods => [:get, :post, :delete, :patch, :options]
  end
end

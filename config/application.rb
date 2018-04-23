require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PatientApp
  class Application < Rails::Application
    # Replace with a lambda or method name defined in ApplicationController
    # to implement access control for the Flipflop dashboard.
    config.flipflop.dashboard_access_filter = -> { head :forbidden }


    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

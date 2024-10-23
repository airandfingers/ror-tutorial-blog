module Authentication
  extend ActiveSupport::Concern

  included do
    AUTH_USER = File.read('/etc/secrets/AUTH_USER').strip
    AUTH_SECRET = File.read('/etc/secrets/AUTH_SECRET').strip

    http_basic_authenticate_with name: AUTH_USER, password: AUTH_SECRET, except: [:index, :show]
  end
end
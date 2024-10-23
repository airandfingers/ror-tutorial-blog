AUTH_USER = File.read('/etc/secrets/AUTH_USER').strip
AUTH_SECRET = File.read('/etc/secrets/AUTH_SECRET').strip

module Authentication
  extend ActiveSupport::Concern

  class_methods do
    def authenticate_with_http_basic(except: [])
      http_basic_authenticate_with name: AUTH_USER, password: AUTH_SECRET, except: except
    end
  end
end
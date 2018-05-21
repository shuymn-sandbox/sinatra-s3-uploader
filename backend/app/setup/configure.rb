require 'rack/protection'

configure do
  # session
  use Rack::Session::Pool,
      expire_adter: 60 * 60 * 24,
      secret: Digest::SHA2.hexdigest(rand.to_s)

  # middleware
  use Rack::Protection

  # Show stack trace (on development)
  set :show_exceptions, :after_handler
end
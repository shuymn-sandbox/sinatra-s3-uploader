require 'bcrypt'

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401
  end

  def authorized?
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
    return false unless (@auth.provided? && @auth.basic? && @auth.credentials)

    user = App::Model::UserMail.find_by(email: @auth.username)
    return false if user.nil?

    BCrypt::Password.new(user.password) == @auth.credentials.last
  end
end
require 'sinatra/json'
require File.expand_path('../../../backend/app/library/image/image_manager', __dir__)

post '/images' do
  App::Library::Image::ImageManager.new.create(params[:file])
  status 200
end

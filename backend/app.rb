# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if settings.development?

Dir['./app/setup/**/*.rb'].each {|file| require_relative file}
Dir['./app/controller/**/*.rb'].each {|file| require_relative file}
Dir['./app/library/**/*.rb'].each {|file| require_relative file}
Dir['./app/model/**/*.rb'].each {|file| require_relative file}

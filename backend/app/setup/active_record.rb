require 'sinatra/activerecord'
require 'yaml'

path = File.expand_path('../../config/database.yml', __dir__)
ActiveRecord::Base.configurations = YAML.load_file(path)
ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations[@environment])

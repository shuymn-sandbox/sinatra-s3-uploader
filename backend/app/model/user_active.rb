require 'active_record/base'

module App::Model
  class UserActive < ActiveRecord::Base
    self.table_name = 'user_active'
    belongs_to :user
  end
end

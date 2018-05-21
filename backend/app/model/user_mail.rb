require 'active_record/base'

module App::Model
  class UserMail < ActiveRecord::Base
    self.table_name = 'user_mail'
    belongs_to :user
  end
end

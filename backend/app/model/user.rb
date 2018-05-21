require 'active_record/base'

module App::Model
  class User < ActiveRecord::Base
    has_one :user_active
    has_one :user_mail
  end
end

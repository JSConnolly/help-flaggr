class User < ActiveRecord::Base
  attr_accessible :email, :phase

  has_and_belongs_to_many :help_requests 
  belongs_to :help_request
end

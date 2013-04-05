class Tag < ActiveRecord::Base
  attr_accessible :content, :help_request_id

  belongs_to :help_request
end

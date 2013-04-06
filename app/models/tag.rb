class Tag < ActiveRecord::Base
  attr_accessible :content, :help_request_id
  # migrations
    # t.string :content
    # t.string :help_request_id
    # t.timestamps

  belongs_to :help_request
end

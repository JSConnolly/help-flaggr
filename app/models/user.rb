class User < ActiveRecord::Base
  attr_accessible :email, :phase
  validates :email, presence: true, uniqueness: true, format: {with: /^\w+@\w+\.[a-zA-Z]{2,}/}
  validates :phase, presence: true, inclusion: { in: [-1, 0, 1, 2, 3, 4] }

  has_and_belongs_to_many :help_requests 
  belongs_to :help_request
end

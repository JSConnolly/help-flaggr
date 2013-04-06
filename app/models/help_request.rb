class HelpRequest < ActiveRecord::Base
  attr_accessible :complete, :note, :teacher_id, :urgency
  validates :note, presence: true

  has_and_belongs_to_many :users
  belongs_to :teacher, :class_name => "User", :foreign_key => :teacher_id
  has_many :tags
end

class HelpRequest < ActiveRecord::Base
  attr_accessible :complete, :note, :teacher_id, :urgency
  validates :note, presence: true

  has_and_belongs_to_many :users
  belongs_to :teacher, :class_name => "User", :foreign_key => :teacher_id
  has_many :tags

  # migrations
    # t.string :note
    # t.integer :urgency
    # t.boolean :complete
    # t.integer :teacher_id
    # t.timestamps
  # join table migration:
    # c.integer :help_request_id
    # c.integer :user_id
    
end

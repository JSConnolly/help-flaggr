class HelpRequest < ActiveRecord::Base
  attr_accessible :complete, :note, :teacher_id, :urgency
end

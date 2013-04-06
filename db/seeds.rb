# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |i|
  HelpRequest.create note: "#{i}alskdfdfjs", urgency: rand(1..3), complete: false
end
# <HelpRequest id: nil, note: nil, urgency: nil, complete: nil, teacher_id: nil, created_at: nil, updated_at: nil> 

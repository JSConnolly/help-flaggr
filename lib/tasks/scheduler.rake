task :complete_tasks => :environment do
  HelpRequest.complete_all
end
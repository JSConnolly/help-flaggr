class HelpRequestsUsers < ActiveRecord::Migration
  def change
    create_table :help_requests_users do |c|
      c.integer :help_request_id
      c.integer :user_id
    end
  end
end

class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :content
      t.string :help_request_id

      t.timestamps
    end
  end
end

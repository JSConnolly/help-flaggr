class CreateHelpRequests < ActiveRecord::Migration
  def change
    create_table :help_requests do |t|
      t.string :note
      t.integer :urgency
      t.boolean :complete
      t.integer :teacher_id

      t.timestamps
    end
  end
end

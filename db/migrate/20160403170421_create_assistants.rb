class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :slack_username

      t.timestamps null: false
    end
  end
end

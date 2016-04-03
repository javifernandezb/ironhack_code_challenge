class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :name
      t.string  :surname
      t.string  :slack_username
      t.integer :bootcamp_id

      t.timestamps null: false
    end
  end
end

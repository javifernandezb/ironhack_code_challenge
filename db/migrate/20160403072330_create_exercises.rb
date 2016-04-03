class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :student_id
      t.integer :pre_work_id
      t.string  :url
      t.boolean :completed

      t.timestamps null: false
    end
  end
end

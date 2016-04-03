class CreatePreWorks < ActiveRecord::Migration
  def change
    create_table :pre_works do |t|
      t.integer :bootcamp_id
      t.string :url
      t.string :learning_unit

      t.timestamps null: false
    end
  end
end

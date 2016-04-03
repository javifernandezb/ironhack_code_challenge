class CreateJoinTableAssistantStudent < ActiveRecord::Migration
  def change
    create_join_table :assistants, :students do |t|
      t.index [:assistant_id, :student_id]
      t.index [:student_id, :assistant_id]
    end
  end
end

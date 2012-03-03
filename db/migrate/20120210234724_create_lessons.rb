class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :lesson_number
      t.string :part_name
      t.integer :weeks_number
      t.integer :hours_count
      t.string :lesson_type
      t.string :manual
      t.string :student_tasks
      t.string :student_homeworks
      t.integer :plan_id

      t.timestamps
    end
  end
end

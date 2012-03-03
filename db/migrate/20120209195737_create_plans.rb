class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :predmet
      t.string :prepod
      t.string :spec
      t.string :grups
      t.string :kurs
      t.string :semestr
      t.string :god
      t.string :accepted
      t.integer :week_count
      t.integer :lecture_count
      t.integer :labs_count
      t.integer :kurs_project
      t.integer :itself_load
      t.string :literature

      t.timestamps
    end
  end
end

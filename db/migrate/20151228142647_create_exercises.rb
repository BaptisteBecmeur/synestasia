class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end

class CreateGenerators < ActiveRecord::Migration
  def change
    create_table :generators do |t|
      t.string :ideog1
      t.string :ideog2
      t.string :ideog3
      t.string :ideog4
      t.string :romanji
      t.string :transcription1
      t.string :transcription2

      t.timestamps null: false
    end
  end
end

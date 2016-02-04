class CreateHiraganas < ActiveRecord::Migration
  def change
    create_table :hiraganas do |t|
      t.string :ideo1
      t.string :ideo2
      t.string :bigletter
      t.string :midletter
      t.string :transcription
      t.string :upload
      t.string :audioclick
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

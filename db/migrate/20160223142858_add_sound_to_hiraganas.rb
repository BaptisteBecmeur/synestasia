class AddSoundToHiraganas < ActiveRecord::Migration
  def change
    add_column :hiraganas, :sound, :string
  end
end

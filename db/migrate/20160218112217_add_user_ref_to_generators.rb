class AddUserRefToGenerators < ActiveRecord::Migration
  def change
    add_reference :generators, :user, index: true, foreign_key: true
  end
end

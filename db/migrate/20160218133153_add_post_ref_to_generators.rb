class AddPostRefToGenerators < ActiveRecord::Migration
  def change
    add_reference :generators, :post, index: true, foreign_key: true
  end
end

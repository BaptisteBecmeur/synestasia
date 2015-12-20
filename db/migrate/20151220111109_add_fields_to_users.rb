class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth_date, :date
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :interests, :string
    add_column :users, :language_course, :string
  end
end

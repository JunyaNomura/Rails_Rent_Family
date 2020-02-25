class AddFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :personality, :string
    add_column :users, :active, :boolean
  end
end

class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :country, :string, default: "us"
    add_column :users, :language, :string, default: "en"
    add_column :users, :refresh_rate, :integer, default: 2
    add_column :users, :num_tiles, :integer, default: 9
  end
end

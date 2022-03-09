class AddLanguageANdCountryToTiles < ActiveRecord::Migration[6.1]
  def change
    add_column :tiles, :language, :string
    add_column :tiles, :country, :string
  end
end

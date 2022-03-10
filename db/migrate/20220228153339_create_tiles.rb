class CreateTiles < ActiveRecord::Migration[6.1]
  def change
    create_table :tiles do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.text :picture_url
      t.string :source
      t.string :author
      t.string :url
      t.references :subtopic, null: false, foreign_key: true

      t.timestamps
    end
  end
end

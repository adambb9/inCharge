class CreateSubtopics < ActiveRecord::Migration[6.1]
  def change
    create_table :subtopics do |t|
      t.string :title
      t.references :subscription, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end

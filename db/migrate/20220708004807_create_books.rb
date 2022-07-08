class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description, :null => true
      t.string :author, :null => true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end

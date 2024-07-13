class CreateFigures < ActiveRecord::Migration[7.1]
  def change
    create_table :figures do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :price
      t.references :anime, null: false, foreign_key: true
      t.boolean :pick_up
      t.boolean :delivery

      t.timestamps
    end
  end
end

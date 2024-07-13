class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :figure, null: false, foreign_key: true
      t.string :mode_of_delivery
      t.references :buyer, null: false, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end

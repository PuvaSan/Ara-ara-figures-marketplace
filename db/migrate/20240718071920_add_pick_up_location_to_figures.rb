class AddPickUpLocationToFigures < ActiveRecord::Migration[7.1]
  def change
    add_column :figures, :pick_up_location, :string
  end
end

class AddClosingHoursToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :closing_hours, :string
  end
end

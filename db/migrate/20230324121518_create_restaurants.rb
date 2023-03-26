class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.datetime :opening_hours
      t.datetime :closing_hours

      t.timestamps
    end
  end
end

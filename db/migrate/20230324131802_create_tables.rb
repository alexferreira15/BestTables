class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end

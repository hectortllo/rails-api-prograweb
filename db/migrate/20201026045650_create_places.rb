class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :image
      t.string :name
      t.text :description
      t.string :location
      t.integer :score

      t.timestamps
    end
  end
end

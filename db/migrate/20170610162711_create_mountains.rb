class CreateMountains < ActiveRecord::Migration[5.1]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :elevation
      t.float :latitude
      t.float :longitude
      t.string :ability

      t.timestamps
    end
  end
end

class CreateMountains < ActiveRecord::Migration[5.1]
  def change
    create_table :mountains do |t|
      t.string :name, null: false
      t.integer :elevation, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.string :ability, null: false

      t.timestamps
    end
  end
end

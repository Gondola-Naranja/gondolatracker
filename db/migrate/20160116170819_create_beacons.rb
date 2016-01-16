class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :disance
      t.string :hex_id

      t.timestamps null: false
    end
  end
end

class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :distance
      t.string :hex_id

      t.timestamps null: false
    end
  end
end

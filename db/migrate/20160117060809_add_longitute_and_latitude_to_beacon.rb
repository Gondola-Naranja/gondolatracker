class AddLongituteAndLatitudeToBeacon < ActiveRecord::Migration
  def change
    add_column :beacons, :latitude, :decimal
    add_column :beacons, :longitude, :decimal
  end
end

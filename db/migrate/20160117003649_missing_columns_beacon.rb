class MissingColumnsBeacon < ActiveRecord::Migration
  def change
    rename_column :beacons, :distance, :distance
    rename_column :beacons, :hex_id, :uuid
    add_column :beacons, :rssi, :string
    add_column :beacons, :power, :string
    add_belongs_to :beacons, :gondola, index: true, foreign_key: true
  end
end

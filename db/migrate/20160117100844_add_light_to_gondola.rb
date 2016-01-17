class AddLightToGondola < ActiveRecord::Migration
  def change
    add_column :gondolas, :light, :integer, default: 0
  end
end

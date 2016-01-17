class CreateGondolas < ActiveRecord::Migration
  def change
    create_table :gondolas do |t|
      t.string :plate
      t.datetime :arrived_at
      t.string :last_location

      t.timestamps null: false
    end
  end
end

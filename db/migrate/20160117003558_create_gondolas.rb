class CreateGondolas < ActiveRecord::Migration
  def change
    create_table :gondolas do |t|
      t.string :plate
      t.string :last_location
      t.string :sort

      t.timestamps null: false
    end
  end
end

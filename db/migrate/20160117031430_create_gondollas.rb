class CreateGondollas < ActiveRecord::Migration
  def change
    create_table :gondollas do |t|
      t.string :plate
      t.string :last_location
      t.string :type

      t.timestamps null: false
    end
  end
end

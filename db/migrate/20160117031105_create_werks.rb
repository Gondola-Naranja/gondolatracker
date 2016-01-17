class CreateWerks < ActiveRecord::Migration
  def change
    create_table :werks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class ChangeTypeName < ActiveRecord::Migration
  def change
    rename_column :gondollas, :type, :sort 
  end
end

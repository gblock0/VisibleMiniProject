class ChangeLocationsToCities < ActiveRecord::Migration
  def change
    rename_column :angel_list_startups, :locations, :cities
  end

end

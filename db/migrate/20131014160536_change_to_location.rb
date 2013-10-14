class ChangeToLocation < ActiveRecord::Migration
  def change
    rename_column :angel_list_startups, :cities, :locations
  end

end

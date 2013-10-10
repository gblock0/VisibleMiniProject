class ChangeCityToLocationsDeleteState < ActiveRecord::Migration
  def change
    rename_column :angel_list_startups, :city, :locations
    remove_column :angel_list_startups, :state
    add_column :angel_list_startups, :created_at, :datetime
    add_column :angel_list_startups, :updated_at, :datetime
  end

end

class ChangeLocationAndMarketsType < ActiveRecord::Migration
  def change
    change_column :angel_list_startups, :locations, :text
    change_column :angel_list_startups, :markets, :text
  end

end

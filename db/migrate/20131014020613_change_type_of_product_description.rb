class ChangeTypeOfProductDescription < ActiveRecord::Migration
  def change
    change_column :angel_list_startups, :product_description, :text
  end

end

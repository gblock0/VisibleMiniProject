class AddSearchUrlToAngelListStartup < ActiveRecord::Migration
  def change
    add_column :angel_list_startups, :search_url, :string
  end
end

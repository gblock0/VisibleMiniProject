class AddCompanyUrlToAngelListStartup < ActiveRecord::Migration
  def change
    add_column :angel_list_startups, :company_url, :string
  end
end

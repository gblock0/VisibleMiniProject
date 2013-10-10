class AddTableAngelListStartup < ActiveRecord::Migration
  def change
    create_table :angel_list_startups do |t|
      t.string :name
      t.string :logo
      t.string :city
      t.string :state
      t.string :product_description
      t.string :pitch
      t.string :markets
      t.string :al_url
    end
  end

end

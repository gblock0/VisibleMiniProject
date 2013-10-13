class AngelListStartup < ActiveRecord::Base


  attr_accessible :name, :logo, :cities, :product_description, :pitch, :markets, :al_url, :company_url, :search_url
  serialize :cities, Array
  serialize :markets, Array

  def self.search_al(name)
    response = HTTParty.get("https://api.angel.co/1/startups/search.json?domain=" + name)
  end

end

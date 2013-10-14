class AngelListStartup < ActiveRecord::Base


  attr_accessible :name, :logo, :locations, :product_description, :pitch, :markets, :al_url, :company_url, :search_url
  serialize :locations, Hash
  serialize :markets, Array

  def self.search_al(name)
    response = HTTParty.get("https://api.angel.co/1/startups/search.json?domain=" + name)
  end

end

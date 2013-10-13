class AngelListStartup < ActiveRecord::Base

  include HTTParty


  base_uri "https://api.angel.co/1/startups/search.json?domain="



  attr_accessible :name, :logo, :locations, :product_description, :pitch, :markets, :al_url, :company_url
  

  def self.search_al(name)
    response = get(name)
  end

end

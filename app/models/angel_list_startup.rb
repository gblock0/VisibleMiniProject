class AngelListStartup < ActiveRecord::Base

  include HTTParty


  base_uri "https://api.angel.co/1/search?query="


  attr_accessible :name, :logo, :locations, :product_description, :pitch, :markets, :al_url
  

  def self.search_al(name)
    response_str = name + "&type=Startup"
    response = get(response_str)
  end


  def self.find_startup(id)
    response_str = "https://api.angel.co/1/startups/#{id}"
    response = get(response_str)
    if response.success?
      self.new(name: response["name"],logo: response["logo_url"], locations: response["locations"],
               product_description: response["product_desc"],pitch: response["high_concept"],markets: response["markets"],al_url: response["angellist_url"] )
    else
      raise response.response
    end
  end


end

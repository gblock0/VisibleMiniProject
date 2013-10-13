class StartupSearchController < ApplicationController
  include StartupSearchHelper


  def index
  end

  def search
    search_url = params[:url]

    search_url = cleanUrl(search_url)
    @startup = AngelListStartup.find_by_search_url(search_url)
    if @startup.blank?
      startup_response = AngelListStartup.search_al(search_url)
      if startup_response.success?
        @startup = AngelListStartup.create(name: startup_response["name"],logo: startup_response["logo_url"],
                 product_description: startup_response["product_desc"],pitch: startup_response["high_concept"],
                 al_url: startup_response["angellist_url"], company_url: startup_response["company_url"], search_url: search_url )
        cities = []
        startup_response["locations"].each do |location|
          cities.push(location["display_name"])
        end
        @startup.cities = cities

        markets = []
        startup_response["markets"].each do |market|
          markets.push(market["display_name"])
        end
        @startup.markets = markets
        @startup.save
      else
        redirect_to root_path, flash: {error: "Cannot find Startup"}
      end
    end
  end

end

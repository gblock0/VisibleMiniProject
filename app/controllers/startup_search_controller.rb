class StartupSearchController < ApplicationController
  include StartupSearchHelper


  def index
  end

  def search
    original_url = params[:url]

    original_url = cleanUrl(original_url)
    startup_response = AngelListStartup.search_al(original_url)
    if startup_response.success?
      @startup = AngelListStartup.create(name: startup_response["name"],logo: startup_response["logo_url"], locations: startup_response["locations"],
               product_description: startup_response["product_desc"],pitch: startup_response["high_concept"],markets: startup_response["markets"],
               al_url: startup_response["angellist_url"], company_url: startup_response["company_url"] )
    else
      redirect_to root_path, flash: {error: "Cannot find Startup"}
    end
  end

end

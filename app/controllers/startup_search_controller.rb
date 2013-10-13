class StartupSearchController < ApplicationController
  include StartupSearchHelper


  def index
    @startup = AngelListStartup.create
  end

  def search
    original_url = params[:url]
    @startup = nil
    original_url = cleanUrl(original_url)
    
    startup_url = original_url.split('.')[0]
    startups = AngelListStartup.search_al(startup_url)
    startups.each do |su|
      startup = AngelListStartup.find_startup(su["id"])
      company_url = cleanUrl(startup.company_url)

      if company_url == original_url
        @startup = startup
        break
      end
    end
    if @startup.blank?
      redirect_to root_path, flash: {error: "Could not find Startup"}
    end
  end

end

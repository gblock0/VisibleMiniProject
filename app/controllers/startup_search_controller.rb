class StartupSearchController < ApplicationController
  def index
    @startup = AngelListStartup.create
  end

  def search


    redirect_to root_path

  end

end

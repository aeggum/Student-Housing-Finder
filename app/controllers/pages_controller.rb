class PagesController < ApplicationController
  def home
    @title = "Home"
    @search = Listing.search(params[:all])
    @listings = @search.all
  end

  def about
    @title = "About"
    @search = Listing.search(params[:all])
  end
end

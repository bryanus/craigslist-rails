class ListingsController < ApplicationController
  def new
    @listing = Listing.new
    render :create
  end

  def destroy
  end

  def create
    @listing = Listing.create(params[:listing])
    redirect_to :action => 'index'
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update_attributes(@listing.title => params[:title],
                               @listing.description => params[:description])
    redirect_to :action => 'index'
  end

  def edit
  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end
end

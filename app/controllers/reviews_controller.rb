class ReviewController < ApplicationController
  def new
    @review = Review.new
  end

  def index
  end

  def show
  end

  def create
    @listing = Listing.find(params[:list_id])
    #@user = current_user
    @review = current_user.reviews.build(params[:review])
    @review.list_id = @listing.id
    #@review = @listing.reviews.build(params[:review])
    #@review.update_attributes(:user_id => @user)
    
    respond_to do |format|
      if (@review.save)
        format.html { redirect_to(@listing) } #, :notice => 'Your review was successfully added.') }
        format.xml  { render :xml => @listing, :status => :created, :location => @listing }
        #format.html { redirect_to(@listing, :notice => 'Review was successfully created.') }
        #format.xml  { render :xml => @listing, :status => :created, :location => @listing }
        #redirect_to @listing
      else 
        format.html { redirect_to(@listing) } #, :notice => 'Your review was not added.') }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
        #flash[:error] = "The review could not be created because there were some errors.........."
        #redirect_to @listing
      end
    end
  end

  def destroy
    session[:return_to] = request.referer
    @listing = List.find(Review.find(params[:id]).list_id)
    @review.destroy
    #redirect_back_or @listing
    redirect_to session[:return_to]
  end
end

class WishlistsController < ApplicationController
  before_action :set_listing!, only: [:create]
  before_action :set_user!

  def create
    @wishlist = @user.build_wishlist
    @wishlist = @user.wishlist.listings.new
    @wishlist = @user.wishlist.listings << @listing
    @user.wishlist.listings
    redirect_to wishlist_path(@user)
    flash[:notice] = "You added #{@listing.title} to your wishlist"
  end

  def show
    @wishlist = @user.build_wishlist
    @wishlist = @user.wishlist.listings
  end

  private
  def set_listing!
    @listing = Listing.find(params[:listing_id])
  end
  def set_user!
    @user = User.find(params[:user_id])
  end
end

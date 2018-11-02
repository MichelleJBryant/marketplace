class ChargesController < ApplicationController
  before_action :find_listing!

  def new
  end

  def create
    # Amount in cents
    @amount = @listing.price

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @listing.price,
      :description => @listing.title,
      :currency    => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  private

  def find_listing!
    @listing = Listing.find(params[:listing_id])
  end


end

class ChargesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @listing = Listing.find(session[:listing_id])

    # Amount in cents
    @amount = @listing.price

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@listing.price * 100).to_i,
      :description => @listing.title,
      :currency    => 'aud'
    )

    flash[:notice] = "Thankyou for purchasing #{@listing.title}, Your payment has been recieved"
    redirect_to listings_path
    
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


end

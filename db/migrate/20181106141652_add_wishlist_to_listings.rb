class AddWishlistToListings < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :wishlist, foreign_key: true
  end
end

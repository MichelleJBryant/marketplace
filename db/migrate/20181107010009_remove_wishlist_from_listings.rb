class RemoveWishlistFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :listings, :wishlist, foreign_key: true
  end
end

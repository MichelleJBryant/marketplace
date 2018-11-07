class AddWishlistToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :wishlist, foreign_key: true
  end
end

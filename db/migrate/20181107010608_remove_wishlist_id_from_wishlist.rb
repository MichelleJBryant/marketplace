class RemoveWishlistIdFromWishlist < ActiveRecord::Migration[5.2]
  def change
    remove_column :wishlists, :wishlist_id, :integer
  end
end

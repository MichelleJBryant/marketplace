class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :wishlist_id

      t.timestamps
    end
  end
end

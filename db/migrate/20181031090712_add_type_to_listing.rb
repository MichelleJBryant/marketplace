class AddTypeToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :resource_type, :string
  end
end

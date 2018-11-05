class AddSubjectToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :subject, :string
  end
end

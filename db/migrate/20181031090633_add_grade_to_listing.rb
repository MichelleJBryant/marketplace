class AddGradeToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :grade, :integer
  end
end

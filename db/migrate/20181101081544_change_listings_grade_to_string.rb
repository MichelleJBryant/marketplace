class ChangeListingsGradeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :listings, :grade, :string
  end
end

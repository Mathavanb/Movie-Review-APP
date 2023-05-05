class AddReviewpgsCountToHomepgs < ActiveRecord::Migration[6.1]
  def change
    add_column :homepgs, :reviewpgs_count, :integer
  end
end

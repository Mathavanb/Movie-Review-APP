class AddRatingAverageToHomepg < ActiveRecord::Migration[6.1]
  def change
    add_column :homepgs, :rating_average, :float
  end
end

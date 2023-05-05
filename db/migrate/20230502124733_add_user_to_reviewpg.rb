class AddUserToReviewpg < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviewpgs, :user, foreign_key: true
  end
end

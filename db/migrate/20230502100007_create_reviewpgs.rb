class CreateReviewpgs < ActiveRecord::Migration[6.1]
  def change
    create_table :reviewpgs do |t|
      t.text :review
      t.integer :rating
      t.references :homepg, null: false, foreign_key: true

      t.timestamps
    end
  end
end

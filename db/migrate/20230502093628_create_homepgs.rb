class CreateHomepgs < ActiveRecord::Migration[6.1]
  def change
    create_table :homepgs do |t|
      t.string :movie_name
      t.date :release_date
      t.text :description

      t.timestamps
    end
  end
end

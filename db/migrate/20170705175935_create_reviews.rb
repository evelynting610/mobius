class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :vendor
      t.integer :rating
      t.text :experiences
      t.text :improvements

      t.timestamps
    end
  end
end

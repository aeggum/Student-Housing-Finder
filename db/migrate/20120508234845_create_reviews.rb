class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.float :rating
      t.integer :helpfulness
      t.integer :flags
      t.integer :listing_id
      t.integer :user_id

      t.timestamps
    end
  end
end

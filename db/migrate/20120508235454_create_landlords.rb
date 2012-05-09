class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.boolean :verified
      t.integer :user_id

      t.timestamps
    end
  end
end

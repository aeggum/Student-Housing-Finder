class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.float :bathrooms
      t.integer :bedrooms
      t.integer :rent
      t.integer :squarefeet
      t.boolean :smoking
      t.boolean :heat
      t.boolean :electric
      t.boolean :flags
      t.boolean :gas
      t.boolean :garbagecollction
      t.integer :length
      t.boolean :furnished
      t.boolean :laundry
      t.boolean :parking
      t.boolean :pets
      t.boolean :ltype
      t.integer :user_id
      t.string :aptnum
      t.string :building_name
      t.integer :landlord_id
      t.string :image
      t.integer :region

      t.timestamps
    end
  end
end

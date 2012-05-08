class UpdateListingModel < ActiveRecord::Migration
  def change
    rename_column :listings, :garbagecollction, :garbagecollection
    add_column    :listings, :house,    :boolean
    add_column    :listings, :apt,      :boolean
    add_column    :listings, :flat,     :boolean
    add_column    :listings, :coop,     :boolean
    add_column    :listings, :cats,     :boolean
    add_column    :listings, :dogs,     :boolean
    change_column :listings, :flags,    :integer
    
    add_index     :listings, :address
    add_index     :listings, :building_name
    add_index     :listings, :rent
    add_index     :listings, :landlord_id
  end
end

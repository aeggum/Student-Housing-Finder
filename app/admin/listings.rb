ActiveAdmin.register Listing do
  scope :apartments
  scope :houses
  index do
    column :address
    column "Building", :building_name
    column "Type", :ltype
    column :flags
    column :rent, :sortable => :rent do |r|
      div :class => "rent" do
        number_to_currency r.rent, :unit => "$"
      end
    end
    column :bedrooms
    column :bathrooms
    default_actions
  end
end
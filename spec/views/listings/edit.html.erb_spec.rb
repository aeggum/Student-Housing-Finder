require 'spec_helper'

describe "listings/edit.html.erb" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :bathrooms => 1.5,
      :bedrooms => 1,
      :rent => 1,
      :squarefeet => 1,
      :smoking => false,
      :heat => false,
      :electric => false,
      :flags => false,
      :gas => false,
      :garbagecollction => false,
      :length => 1,
      :furnished => false,
      :laundry => false,
      :parking => false,
      :pets => false,
      :ltype => false,
      :user_id => 1,
      :aptnum => "MyString",
      :building_name => "MyString",
      :landlord_id => 1,
      :image => "MyString",
      :region => 1
    ))
  end

  it "renders the edit listing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => listings_path(@listing), :method => "post" do
      assert_select "input#listing_address", :name => "listing[address]"
      assert_select "input#listing_city", :name => "listing[city]"
      assert_select "input#listing_state", :name => "listing[state]"
      assert_select "input#listing_zip", :name => "listing[zip]"
      assert_select "input#listing_bathrooms", :name => "listing[bathrooms]"
      assert_select "input#listing_bedrooms", :name => "listing[bedrooms]"
      assert_select "input#listing_rent", :name => "listing[rent]"
      assert_select "input#listing_squarefeet", :name => "listing[squarefeet]"
      assert_select "input#listing_smoking", :name => "listing[smoking]"
      assert_select "input#listing_heat", :name => "listing[heat]"
      assert_select "input#listing_electric", :name => "listing[electric]"
      assert_select "input#listing_flags", :name => "listing[flags]"
      assert_select "input#listing_gas", :name => "listing[gas]"
      assert_select "input#listing_garbagecollction", :name => "listing[garbagecollction]"
      assert_select "input#listing_length", :name => "listing[length]"
      assert_select "input#listing_furnished", :name => "listing[furnished]"
      assert_select "input#listing_laundry", :name => "listing[laundry]"
      assert_select "input#listing_parking", :name => "listing[parking]"
      assert_select "input#listing_pets", :name => "listing[pets]"
      assert_select "input#listing_ltype", :name => "listing[ltype]"
      assert_select "input#listing_user_id", :name => "listing[user_id]"
      assert_select "input#listing_aptnum", :name => "listing[aptnum]"
      assert_select "input#listing_building_name", :name => "listing[building_name]"
      assert_select "input#listing_landlord_id", :name => "listing[landlord_id]"
      assert_select "input#listing_image", :name => "listing[image]"
      assert_select "input#listing_region", :name => "listing[region]"
    end
  end
end

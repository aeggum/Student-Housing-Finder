require "spec_helper"

describe ListingsController do
  describe "routing" do

    it "routes to #index" do
      get("/listings").should route_to("listings#index")
    end

    it "routes to #new" do
      get("/listings/new").should route_to("listings#new")
    end

    it "routes to #show" do
      get("/listings/1").should route_to("listings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/listings/1/edit").should route_to("listings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/listings").should route_to("listings#create")
    end

    it "routes to #update" do
      put("/listings/1").should route_to("listings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/listings/1").should route_to("listings#destroy", :id => "1")
    end

  end
end

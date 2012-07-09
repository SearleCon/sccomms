require "spec_helper"

describe ScerrorsController do
  describe "routing" do

    it "routes to #index" do
      get("/scerrors").should route_to("scerrors#index")
    end

    it "routes to #new" do
      get("/scerrors/new").should route_to("scerrors#new")
    end

    it "routes to #show" do
      get("/scerrors/1").should route_to("scerrors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scerrors/1/edit").should route_to("scerrors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scerrors").should route_to("scerrors#create")
    end

    it "routes to #update" do
      put("/scerrors/1").should route_to("scerrors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scerrors/1").should route_to("scerrors#destroy", :id => "1")
    end

  end
end

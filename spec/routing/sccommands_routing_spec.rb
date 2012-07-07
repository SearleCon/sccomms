require "spec_helper"

describe SccommandsController do
  describe "routing" do

    it "routes to #index" do
      get("/sccommands").should route_to("sccommands#index")
    end

    it "routes to #new" do
      get("/sccommands/new").should route_to("sccommands#new")
    end

    it "routes to #show" do
      get("/sccommands/1").should route_to("sccommands#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sccommands/1/edit").should route_to("sccommands#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sccommands").should route_to("sccommands#create")
    end

    it "routes to #update" do
      put("/sccommands/1").should route_to("sccommands#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sccommands/1").should route_to("sccommands#destroy", :id => "1")
    end

  end
end

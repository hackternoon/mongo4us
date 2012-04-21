require "spec_helper"

describe Ns::LlinksController do
  describe "routing" do

    it "routes to #index" do
      get("/ns/llinks").should route_to("ns/llinks#index")
    end

    it "routes to #new" do
      get("/ns/llinks/new").should route_to("ns/llinks#new")
    end

    it "routes to #show" do
      get("/ns/llinks/1").should route_to("ns/llinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ns/llinks/1/edit").should route_to("ns/llinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ns/llinks").should route_to("ns/llinks#create")
    end

    it "routes to #update" do
      put("/ns/llinks/1").should route_to("ns/llinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ns/llinks/1").should route_to("ns/llinks#destroy", :id => "1")
    end

  end
end

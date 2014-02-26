require "spec_helper"

describe SolvedsController do
  describe "routing" do

    it "routes to #index" do
      get("/solveds").should route_to("solveds#index")
    end

    it "routes to #new" do
      get("/solveds/new").should route_to("solveds#new")
    end

    it "routes to #show" do
      get("/solveds/1").should route_to("solveds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/solveds/1/edit").should route_to("solveds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/solveds").should route_to("solveds#create")
    end

    it "routes to #update" do
      put("/solveds/1").should route_to("solveds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/solveds/1").should route_to("solveds#destroy", :id => "1")
    end

  end
end

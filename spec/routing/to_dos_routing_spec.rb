require "spec_helper"

describe ToDosController do
  describe "routing" do

    it "routes to #index" do
      get("/to_dos").should route_to("to_dos#index")
    end

    it "routes to #new" do
      get("/to_dos/new").should route_to("to_dos#new")
    end

    it "routes to #show" do
      get("/to_dos/1").should route_to("to_dos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/to_dos/1/edit").should route_to("to_dos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/to_dos").should route_to("to_dos#create")
    end

    it "routes to #update" do
      put("/to_dos/1").should route_to("to_dos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/to_dos/1").should route_to("to_dos#destroy", :id => "1")
    end

  end
end

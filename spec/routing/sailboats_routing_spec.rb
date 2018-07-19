require "rails_helper"

RSpec.describe SailboatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sailboats").to route_to("sailboats#index")
    end

    it "routes to #new" do
      expect(:get => "/sailboats/new").to route_to("sailboats#new")
    end

    it "routes to #show" do
      expect(:get => "/sailboats/1").to route_to("sailboats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sailboats/1/edit").to route_to("sailboats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sailboats").to route_to("sailboats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sailboats/1").to route_to("sailboats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sailboats/1").to route_to("sailboats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sailboats/1").to route_to("sailboats#destroy", :id => "1")
    end

  end
end

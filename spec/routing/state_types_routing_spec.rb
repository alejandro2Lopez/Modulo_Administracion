require "rails_helper"

RSpec.describe StateTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/state_types").to route_to("state_types#index")
    end

    it "routes to #new" do
      expect(get: "/state_types/new").to route_to("state_types#new")
    end

    it "routes to #show" do
      expect(get: "/state_types/1").to route_to("state_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/state_types/1/edit").to route_to("state_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/state_types").to route_to("state_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/state_types/1").to route_to("state_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/state_types/1").to route_to("state_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/state_types/1").to route_to("state_types#destroy", id: "1")
    end
  end
end

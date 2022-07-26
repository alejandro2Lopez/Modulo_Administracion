require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/state_types", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # StateType. As you add validations to StateType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      StateType.create! valid_attributes
      get state_types_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      state_type = StateType.create! valid_attributes
      get state_type_url(state_type)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_state_type_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      state_type = StateType.create! valid_attributes
      get edit_state_type_url(state_type)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new StateType" do
        expect {
          post state_types_url, params: { state_type: valid_attributes }
        }.to change(StateType, :count).by(1)
      end

      it "redirects to the created state_type" do
        post state_types_url, params: { state_type: valid_attributes }
        expect(response).to redirect_to(state_type_url(StateType.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new StateType" do
        expect {
          post state_types_url, params: { state_type: invalid_attributes }
        }.to change(StateType, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post state_types_url, params: { state_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested state_type" do
        state_type = StateType.create! valid_attributes
        patch state_type_url(state_type), params: { state_type: new_attributes }
        state_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the state_type" do
        state_type = StateType.create! valid_attributes
        patch state_type_url(state_type), params: { state_type: new_attributes }
        state_type.reload
        expect(response).to redirect_to(state_type_url(state_type))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        state_type = StateType.create! valid_attributes
        patch state_type_url(state_type), params: { state_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested state_type" do
      state_type = StateType.create! valid_attributes
      expect {
        delete state_type_url(state_type)
      }.to change(StateType, :count).by(-1)
    end

    it "redirects to the state_types list" do
      state_type = StateType.create! valid_attributes
      delete state_type_url(state_type)
      expect(response).to redirect_to(state_types_url)
    end
  end
end

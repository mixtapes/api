require 'rails_helper'

RSpec.describe ProfilesController, :type => :controller do

  describe "GET :index" do
    before do
      get :index, format: 'json'
    end

    it "returns a HTTP 200" do
      expect(response.status).to eql(200)
    end
  end

  describe "GET :show" do
    context "with a valid parameter" do
      let!(:profile) { create(:profile) }

      before do
        get :show, id: profile, format: 'json'
      end

      it "returns a HTTP 200" do
        expect(response.status).to eql(200)
      end

      pending "returns a JSON API body"
    end

    context "with an invalid parameter" do
      it "returns a HTTP 404" do
        expect { get :show, id: 'missing', format: 'json' }.to raise_error(Mongoid::Errors::DocumentNotFound)

        # TODO: Find out how to test the real response as we are
        # building an API. We shouldn't depend on our ORM (Mongoid)
        # registering the rescue handlers in controllers.

        pending 'Test the actual HTTP response status'
        expect(response.status).to eql(404)
      end

      pending "returns a JSON API error"
    end
  end
end

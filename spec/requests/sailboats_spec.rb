require 'rails_helper'

RSpec.describe "Sailboats", type: :request do
  describe "GET /sailboats" do
    it "works! (now write some real specs)" do
      get sailboats_path
      expect(response).to have_http_status(200)
    end
  end
end

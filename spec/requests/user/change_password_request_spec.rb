require 'rails_helper'

RSpec.describe "User::ChangePasswords", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/user/change_password/index"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe CommentController, type: :controller do

  describe "GET #content" do
    it "returns http success" do
      get :content
      expect(response).to have_http_status(:success)
    end
  end

end

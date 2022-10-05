require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET /index' do
    it 'is successful when user is logged in' do
      user = create(:user)
      sign_in user
      get root_url
      expect(response).to be_successful
    end

    it 'redirects to sign in page when user is not authenticated' do
      get root_url
      expect(response).to redirect_to(new_user_session_url)
    end
  end
end

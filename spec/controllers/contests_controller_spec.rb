require 'rails_helper'

RSpec.describe ContestsController, type: :controller do
  context 'GET #index' do

    it 'returns an error response when user is not authenticated' do
      get :index
      expect(response).to redirect_to(:new_user_session)
    end

    it 'returns a success response when user authenticated' do
      get :index
      expect(response).to be_success
    end
  end

  # context 'GET #show' do
  #   it 'returns a success response' do
  #     contest = Contest.create!(name: 'My new contest', starts_in: Date.new)
  #     get :show, params: { id: contest.to_param }
  #     expect(response).to be_success
  #   end
  # end
end

require 'rails_helper'

RSpec.describe 'Challenges', type: :request do
  # Initialise sample data
  let!(:challenges) { create_list(:challenge, 10) }
  let(:challenge_id) { challenges.first.id }

  # Tests for :index
  describe 'GET /index' do
    before { get '/challenges' }

    it 'returns JSON' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Tests for :show
end

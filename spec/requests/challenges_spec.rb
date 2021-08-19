require 'rails_helper'

RSpec.describe 'Challenges', type: :request do
  # Initialise sample data
  let!(:challenges) { create_list(:challenge, 10) }
  let(:challenge_id) { challenges.first.id }

  # Tests for :index
  describe 'index request' do
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
  describe 'show request' do
    before { get "/challenges/#{challenge_id}" }

    context 'when the record exists' do
      it 'returns the challenge' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(challenge_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:challenge_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end

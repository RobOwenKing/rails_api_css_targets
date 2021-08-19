class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.select(:id, :name).all
    json_response(@challenges)
  end

  def show
    @challenge = Challenge.find(params[:id])
    json_response(@challenge)
  end
end

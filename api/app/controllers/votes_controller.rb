class VotesController < ApplicationController
  def new
  end
  def create
    @vote = Vote.create(badge_id: params[:vote][:badge_id], teacher_id: params[:vote][:teacher_id], value: params[:vote][:value])
  end
end

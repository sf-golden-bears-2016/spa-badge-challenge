class BadgesController < ApplicationController
  include BadgesHelper

  def index
    @badges = Badge.where(teacher_id: params[:id])
    render json: @badges
  end

  def create
    @badge = Badge.new(badge_params)
    @badge.save
    render json: @badge, layout: false, locals: {badge: @badge}
  end

  def update
    @badge = Badge.find(params[:id])
    @badge.update(badge_params)
    render json: @badge
  end
end

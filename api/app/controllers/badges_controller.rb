class BadgesController < ApplicationController
  include BadgesHelper

  def create
    @badge = Badge.new(badge_params)
    @badge.save
    headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
    render json: @badge, layout: false, locals: {badge: @badge}
  end

  def update
    @badge = Badge.find(params[:id])
    @badge.update(badge_params)
    headers['Access-Control-Allow-Origin'] = '*'
    flash.notice = "Badge '#{@badge.name}' Updated!"
    # redirect_to badge_path(@badge)
    render json: @badge
  end
end

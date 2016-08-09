class BadgesController < ApplicationController
  include BadgesHelper

  def create
    @badge = Badge.new(badge_params)
    @badge.save
    flash.notice = "Badge '#{@badge.name}' Created!"
    redirect_to article_path(@badge)
  end

  def update
    @badge = Badge.find(params[:id])
    @badge.update(badge_params)
    flash.notice = "Badge '#{@badge.name}' Updated!"
    redirect_to badge_path(@badge)
  end
end

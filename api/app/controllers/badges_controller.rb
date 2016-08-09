class BadgesController < ApplicationController
  def new
  end
  def create
    @badge = Badge.create(content: params[:badge][:content], teacher_id: params[:badge][:teacher_id])
  end
end

class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    content_type :json
    {teachers: @teachers}.to_json
  end

  def show
    @teacher = Teacher.find(params[:id])
    content_type :json
    {teacher: @teacher}.to_json
  end
end

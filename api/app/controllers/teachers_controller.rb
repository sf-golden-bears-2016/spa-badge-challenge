class TeachersController < ApplicationController
  def index
      @teachers = Teacher.all
      headers['Access-Control-Allow-Origin'] = '*'
      render json: @teachers
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

end

class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
    headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
    render :json => @teachers
  end

  def show
    @teacher = Teacher.find(params[:id])
    headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
    render :json => @teacher
  end
end

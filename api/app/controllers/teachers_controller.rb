class TeachersController < ApplicationController
  def index
      @teachers = Teacher.all
      headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
      render :json => @teachers
  end

  def show
    @teacher = Teacher.find(params[:id])
    # post.to_json(:include => :user => {:only => :username })
    headers['Access-Control-Allow-Origin'] = '*'
    json_data = { teacher: @teacher, badges: @teacher.badges}
    render :json => json_data
    # render :json => @teacher
  end

end

class TeachersController < ApplicationController
  before_action :load_teachers

  def index
    @teacher = Teacher.new
  end

  def create
   @teacher = Teacher.new(teacher_params)
    if @teacher.save
      render
    else
      render 'reload'
    end
  end

  private

  def load_teachers
    @teachers = Teacher.includes(:faculty).order(:created_at).page params[:page]
  end

  def teacher_params
    params.require(:teacher).permit(:name, :email, :faculty_id)
  end
end
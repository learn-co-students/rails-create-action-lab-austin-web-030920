class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @post = Student.new
    @post.first_name = params[:first_name]
    @post.last_name = params[:last_name]
    @post.save
    redirect_to student_path(@student)
  end

end

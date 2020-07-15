class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

 


  def import
    Student.import(params[:file])
    redirect_to students_path, notice: "Student Added successfully"
  end

end

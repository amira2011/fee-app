class StudentsController < ApplicationController


  def index
    @students = Student.all
  end


  def show
    @students = Student.all
  end

  def search
      @sa=Student.all
      @names = Array.new
          @sa.each do |s|
                @names.push(s.name)
          end



    if params[:name].present?

       @student= Student.where(name: params[:name]).first
        

    end
end




  def import
    Student.import(params[:file])
    redirect_to students_path, notice: "Student Added successfully"
  end

end

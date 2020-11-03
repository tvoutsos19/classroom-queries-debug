class StudentsController < ApplicationController
  def index
    @students = Student.all.order({ :created_at => :desc })

    render({ :template => "students/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @student = Student.where({:id => the_id }).at(0)

    render({ :template => "students/show.html.erb" })
  end
end

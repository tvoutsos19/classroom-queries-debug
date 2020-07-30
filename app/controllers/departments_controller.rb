class DepartmentsController < ApplicationController
  def index
    @departments = Department.all.order({ :created_at => :desc })

    render({ :template => "departments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @department = Department.where({:id => the_id })

    render({ :template => "departments/show.html.erb" })
  end
end

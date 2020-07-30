class CoursesController < ApplicationController
  def index
    @courses = Course.all.order({ :created_at => :desc })

    render({ :template => "courses/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @course = Course.where({:id => the_id }).at(0)

    render({ :template => "courses/show.html.erb" })
  end
end

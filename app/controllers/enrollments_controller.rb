class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all.order({ :created_at => :desc })

    render({ :template => "enrollments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @enrollment = Enrollment.where({:id => the_id }).at(0)

    render({ :template => "enrollments/show.html.erb" })
  end
end

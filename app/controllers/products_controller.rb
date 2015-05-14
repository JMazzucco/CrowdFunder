class ProductsController < ApplicationController
  def index
 		@projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)

  	if @project.save
  		redirect_to project_url
  	else
  		render :new
  	end
  end

  private
  def project_params
  		params.require(:project).permit(:name, :description, :funding_goal, :start_date, :end_date, :photo)
  end

end

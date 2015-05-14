class ProductsController < ApplicationController
  def index
 		@projects = Project.all
  end

  def new
  	@product = Project.new
  end

  def create
  	@product = Project.new(project_params)

  	if @product.save
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

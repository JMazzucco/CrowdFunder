class ProjectsController < ApplicationController
  def index
 		@projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
    @project.rewards.build
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def create
  	@project = Project.new(project_params)
    @project.user_id = current_user.id

  	if @project.save
  		redirect_to projects_url
  	else
  		render :new
  	end
  end

  private
  def project_params
  		params.require(:project).permit(:name, :description, :funding_goal, :start_date, :end_date, :photo, rewards_attributes: [:title, :description, :amount, :cap, :_destroy])
  end
end
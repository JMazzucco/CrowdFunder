class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
    @pledge = @project.pledges.build
  end

  def create
    @project = load_project
    @reward = @project.rewards.find(params[:reward_id])
    @pledge = @project.pledges.new(reward_id: @reward.id, user_id: current_user.id, project_id: @project)
      if @pledge.save
        redirect_to projects_url
      else
        redirect_to show_project(@project)
      end
  end

  def destroy
  end

   private
  def pledge_params
    params.require(:pledge).permit(:project_id, :user_id)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end

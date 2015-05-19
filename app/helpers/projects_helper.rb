module ProjectsHelper
  def is_owner?(project)
    project.user == current_user
  end
end

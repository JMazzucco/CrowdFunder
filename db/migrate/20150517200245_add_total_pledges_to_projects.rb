class AddTotalPledgesToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :total_pledges, :integer
  end
end

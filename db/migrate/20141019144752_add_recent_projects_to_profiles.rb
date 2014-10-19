class AddRecentProjectsToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :recent_project, :string
  end

  def down
    remove_column :profiles, :recent_project
  end
end

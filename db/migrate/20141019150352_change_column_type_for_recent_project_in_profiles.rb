class ChangeColumnTypeForRecentProjectInProfiles < ActiveRecord::Migration
  def up
    change_column :profiles, :recent_project, :text, limit: nil
  end

  def down
    change_column :profiles, :recent_project, :string
  end
end

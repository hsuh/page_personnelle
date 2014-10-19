class AddGithubToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :github, :string
  end

  def down
    remove_column :profiles, :github
  end
end

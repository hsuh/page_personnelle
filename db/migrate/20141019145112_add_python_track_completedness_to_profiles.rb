class AddPythonTrackCompletednessToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :python_track_completedness, :string
  end

  def down
    remove_column :profiles, :python_track_completedness
  end
end

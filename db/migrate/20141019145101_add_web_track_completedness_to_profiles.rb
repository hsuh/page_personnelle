class AddWebTrackCompletednessToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :web_track_completedness, :string
  end

  def down
    remove_column :profiles, :web_track_completedness
  end
end

class AddJsTrackCompletednessToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :js_track_completedness, :string
  end

  def down
    remove_column :profiles, :js_track_completedness
  end
end

class AddRubyTrackCompletednessToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :ruby_track_completedness, :string
  end

  def down
    remove_column :profiles, :ruby_track_completedness
  end
end

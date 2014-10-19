class AddTwitterToProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :twitter, :string
  end

  def down
    remove_column :profiles, :twitter
  end
end

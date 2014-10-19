class ChangeColumnTypeInProfiles < ActiveRecord::Migration
  def up
    change_column :profiles, :about, :text, limit: nil
  end

  def down
    change_column :profiles, :about, :string
  end
end

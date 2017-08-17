class AddBuylinkToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :buylink1, :string
    add_column :releases, :buylink2, :string
  end
end

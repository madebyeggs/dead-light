class AddVendorToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :vendor1, :string
    add_column :releases, :vendor2, :string
  end
end

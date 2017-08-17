class AddTracklistToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :tracklist, :text, :limit => nil
  end
end

class AddDurationToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :duration, :string
  end
end

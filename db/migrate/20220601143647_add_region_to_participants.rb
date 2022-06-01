class AddRegionToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :region, :text
  end
end

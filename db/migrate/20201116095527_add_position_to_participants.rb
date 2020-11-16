class AddPositionToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :position, :string
  end
end

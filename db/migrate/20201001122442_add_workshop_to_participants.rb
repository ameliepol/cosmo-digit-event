class AddWorkshopToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :workshop, :string
  end
end

class AddServiceToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :service, :text
  end
end

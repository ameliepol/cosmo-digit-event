class AddRequestToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :request, :text
  end
end

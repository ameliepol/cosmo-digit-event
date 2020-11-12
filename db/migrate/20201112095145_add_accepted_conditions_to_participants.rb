class AddAcceptedConditionsToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :accepted_conditions, :boolean
  end
end

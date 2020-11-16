class AddOrganizationToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :organization, :string
  end
end

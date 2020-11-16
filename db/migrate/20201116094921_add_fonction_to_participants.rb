class AddFonctionToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :fonction, :string
  end
end

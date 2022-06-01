class AddOidCodeToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :oid_code, :string
  end
end

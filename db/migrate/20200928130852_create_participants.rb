class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :company
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end

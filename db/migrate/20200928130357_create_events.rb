class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.text :place
      t.integer :emailing_status
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

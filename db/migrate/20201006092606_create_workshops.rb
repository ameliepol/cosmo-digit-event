class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.text :speaker
      t.boolean :visible, default: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end

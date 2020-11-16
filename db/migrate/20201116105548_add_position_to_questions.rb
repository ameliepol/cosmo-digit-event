class AddPositionToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :position, :string
  end
end

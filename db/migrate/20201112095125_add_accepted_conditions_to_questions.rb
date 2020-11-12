class AddAcceptedConditionsToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :accepted_conditions, :boolean
  end
end

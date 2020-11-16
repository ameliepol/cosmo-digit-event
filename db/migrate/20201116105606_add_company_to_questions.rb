class AddCompanyToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :company, :string
  end
end

class RenameOrganismToOrganization < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :organism, :organization
  end
end

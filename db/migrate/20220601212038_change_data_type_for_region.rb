class ChangeDataTypeForRegion < ActiveRecord::Migration[6.0]
  def change
    change_column :participants, :region, :string
  end
end

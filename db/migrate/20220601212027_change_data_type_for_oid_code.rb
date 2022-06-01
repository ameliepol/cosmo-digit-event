class ChangeDataTypeForOidCode < ActiveRecord::Migration[6.0]
  def change
    change_column :participants, :oid_code, :string
  end
end

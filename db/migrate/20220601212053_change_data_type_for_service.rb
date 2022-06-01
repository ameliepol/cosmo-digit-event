class ChangeDataTypeForService < ActiveRecord::Migration[6.0]
  def change
    change_column :participants, :service, :string
  end
end

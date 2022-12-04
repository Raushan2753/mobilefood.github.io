class RenameStatus < ActiveRecord::Migration[7.0]
  def change
    rename_column :mobile_foods, :status, :Status
  end
end

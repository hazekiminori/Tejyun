class ChangeChangesToAdditionalChanges < ActiveRecord::Migration[6.1]
  def change
    rename_table :changes, :additional_changes
  end
end

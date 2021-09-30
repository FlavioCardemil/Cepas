class ChangeRoleToBeBoolean < ActiveRecord::Migration[5.2]
  def self.up
    change_column :enologist_magazines, :role, "boolean USING role::boolean"
    rename_column :enologist_magazines, :role, :editor
  end

  def self.down
    change_column :enologist_magazines, :role, "integer USING CAST(role AS integer)"
    rename_column :enologist_magazines, :editor, :role
  end
end

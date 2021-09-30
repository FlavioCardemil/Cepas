class AddDetailsToEnologistMagazines < ActiveRecord::Migration[5.2]
  def change
    add_column :enologist_magazines, :writer, :boolean
    add_column :enologist_magazines, :reviewer, :boolean
  end
end

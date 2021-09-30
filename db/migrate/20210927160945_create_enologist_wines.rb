class CreateEnologistWines < ActiveRecord::Migration[5.2]
  def change
    create_table :enologist_wines do |t|
      t.references :wine, foreign_key: true
      t.references :enologist, foreign_key: true
      t.integer :grade

      t.timestamps
    end
  end
end

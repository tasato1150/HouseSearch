class CreateMunicipalities < ActiveRecord::Migration[6.0]
  def change
    create_table :municipalities do |t|
      t.string :municipality_name, null: false
      t.integer :prefecture_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end

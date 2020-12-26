class CreatePrefectureLines < ActiveRecord::Migration[6.0]
  def change
    create_table :prefecture_lines do |t|
      t.integer :prefecture_id, null: false, foreign_key: true
      t.integer :line_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :src
      t.references :property, foreign_key: true
      t.timestamps
    end
  end
end

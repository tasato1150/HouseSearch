class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :title, null: false
      t.integer :rent, null: false
      t.integer :deposit, null: false
      t.integer :location_floor
      t.integer :number_floor
      t.text :other_charge
      t.integer :occupied_area, null: false
      t.integer :floor_plan_id, null: false
      t.integer :minutes_foot_id, null: false
      t.integer :age, null: false
      t.integer :building_structure_id, null: false
      t.integer :position_id
      t.integer :condition_id
      t.integer :kitchen_id
      t.integer :bath_toilet_id
      t.integer :security_id
      t.integer :air_conditioning_id
      t.integer :facility_id
      t.integer :broadcast_id
      t.integer :parking_id
      t.integer :contract_period_id
      t.integer :current_situation_id
      t.integer :other_id
      t.string :delivery
      t.string :renewal_fee
      t.references :admin, null: false, foreign_key: true
      t.references :prefecture, null: false, foreign_key: true
      t.timestamps
    end
  end
end

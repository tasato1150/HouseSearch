class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :rent, null: false
      t.integer :deposit, null: false
      t.text :other_charge
      t.integer :prefectures_id, null: false
      t.integer :municipalities_id, null: false
      t.integer :route_id, null: false
      t.integer :station_id, null: false
      t.integer :occupied_area, null: false
      t.integer :floor_plan_id, null: false
      t.integer :minutes_foot_id, null: false
      t.integer :age, null: false
      t.integer :building_structure_id, null: false
      t.integer :position_id, null: false
      t.integer :condition_id, null: false
      t.integer :kitchen_id, null: false
      t.integer :bath_toilet_id, null: false
      t.integer :security_id, null: false
      t.integer :air_conditioning_id, null: false
      t.integer :facility_id, null: false
      t.integer :broadcast_id, null: false
      t.integer :parking_id, null: false
      t.integer :contract_period_id, null: false
      t.integer :current_situation_id, null: false
      t.integer :delivery_id, null: false
      t.integer :renewal_fee_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

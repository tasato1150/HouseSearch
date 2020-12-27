class Property < ApplicationRecord
  belongs_to :admin
  belongs_to :prefecture
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :title, presence: true
  validates :rent, presence: true
  validates :deposit, presence: true
  validates :occupied_area, presence: true
  validates :age, presence: true
  validates :floor_plan_id, presence: { message: "を選択してください"}
  validates :minutes_foot_id, presence: { message: "を選択してください"}
  validates :building_structure_id, presence: { message: "を選択してください"}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Plan         #間取り
  belongs_to_active_hash :MinutesFoot       #駅徒歩分
  belongs_to_active_hash :BuildingStructure #建物構造
  belongs_to_active_hash :Position          #位置
  belongs_to_active_hash :Conditions        #条件
  belongs_to_active_hash :Kitchen           #キッチン
  belongs_to_active_hash :BathToilet        #バス・トイレ
  belongs_to_active_hash :Security          #セキュリティ
  belongs_to_active_hash :AirConditioning   #冷暖房
  belongs_to_active_hash :Facility          #設備
  belongs_to_active_hash :Broadcast         #放送・通信
  belongs_to_active_hash :Parking           #駐車場
  belongs_to_active_hash :Other             #その他
  belongs_to_active_hash :ContractPeriod    #契約期間
  belongs_to_active_hash :CurrentSituation  #現況
end

# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|admin|boolean|default: false|

### Association
- has_many :properties
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy

## Propertiesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|rent|integer|null: false|
|deposit|integer|null: false|
|location_floor|integer||
|number_floor|integer||
|other_charge|text||
|occupied_area|integer|null: false|
|floor_plan_id|integer|null: false|
|minutes_foot_id|integer|null: false|
|age|integer|null: false|
|building_structure_id|integer|null: false|
|position_id|integer||
|condition_id|integer||
|kitchen_id|integer||
|bath_toilet_id|integer||
|security_id|integer||
|air_conditioning_id|integer||
|facility_id|integer||
|broadcast_id|integer||
|parking_id|integer||
|other_id|integer||
|contract_period_id|integer||
|current_situation_id|integer||
|delivery|string||
|renewal_fee|string||
|user_id|references|null: false, foreign_key: true|
|prefecture_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :prefecture
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :images, dependent: :destroy
- accepts_nested_attributes_for :images, allow_destroy: true
- belongs_to_active_hash: FloorPlan
- belongs_to_active_hash: MinutesFoot
- belongs_to_active_hash: BuildingStructure
- belongs_to_active_hash: Position
- belongs_to_active_hash: Conditions
- belongs_to_active_hash: Kitchen
- belongs_to_active_hash: BathToilet
- belongs_to_active_hash: Security
- belongs_to_active_hash: AirConditioning
- belongs_to_active_hash: Facility
- belongs_to_active_hash: Broadcast
- belongs_to_active_hash: Parking
- belongs_to_active_hash: Other
- belongs_to_active_hash: ContractPeriod
- belongs_to_active_hash: CurrentSituation

## Prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture_name|string|null: false|

### Association
- has_many :properties
- has_many :municipalities
- has_many :prefecture_lines
- has_many :lines, through: :prefecture_lines

## Municipalitiesテーブル
|Column|Type|Options|
|------|----|-------|
|municipality_name|string|null: false|
|prefecture_id|integer|null: false, foreign_key: true|

### Association
- belongs_to: prefecture

## Linesテーブル
|Column|Type|Options|
|------|----|-------|
|line_name|string|null: false|

### Association
- has_many :prefecture_lines
- has_many :prefectures, through: :prefecture_lines
- has_many :stations

## PrefectureRoutesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture_id|integer|null: false, foreign_key: true|
|line_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :prefecture
- belongs_to :line

## Stationsテーブル
|Column|Type|Options|
|------|----|-------|
|station_name|string|null: false|
|line_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :line

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|property_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :property

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|property_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :property

## Imagesテーブル
|Column|Type|Options|
|------|----|-------|
|src|string||
|property_id|references|null: false, foreign_key: true|

### Association
- belongs_to: property, optional: true
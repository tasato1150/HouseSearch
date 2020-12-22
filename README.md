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
|other_charge|text||
|prefectures_id|integer|null: false|
|municipalities_id|integer|null: false|
|route_id|integer|null: false|
|station_id|integer|null: false|
|occupied_area|integer|null: false|
|floor_plan_id|integer|null: false|
|minutes_foot_id|integer|null: false|
|age|integer|null: false|
|building_structure_id|integer|null: false|
|position_id|integer|null: false|
|condition_id|integer|null: false|
|kitchen_id|integer|null: false|
|bath_toilet_id|integer|null: false|
|security_id|integer|null: false|
|air_conditioning_id|integer|null: false|
|facility_id|integer|null: false|
|broadcast_id|integer|null: false|
|parking_id|integer|null: false|
|other_id|integer|null: false|
|contract_period_id|integer|null: false|
|current_situation_id|integer|null: false|
|delivery_id|integer|null: false|
|renewal_fee_id|integer|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to: user
- has_many: images, dependent: destroy
- accepts_nested_attributes_for :images, allow_destroy: true
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :liked_users, through: :likes, source: :user
- belongs_to_active_hash: Prefectures
- belongs_to_active_hash: Municipalities
- belongs_to_active_hash: Route
- belongs_to_active_hash: Station
- belongs_to_active_hash: FloorPlan
- belongs_to_active_hash: MinutesFoot
- belongs_to_active_hash: BuildingStructure
- belongs_to_active_hash: Position
- belongs_to_active_hash: Condition
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
- belongs_to_active_hash: Delivery
- belongs_to_active_hash: RenewalFee

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
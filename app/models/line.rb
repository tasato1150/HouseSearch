class Line < ApplicationRecord
  has_many :prefecture_lines
  has_many :prefectures, through: :prefecture_lines
  has_many :stations
end

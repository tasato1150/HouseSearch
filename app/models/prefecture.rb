class Prefecture < ApplicationRecord
  has_many :properties
  has_many :municipalities
  has_many :prefecture_lines
  has_many :lines, through: :prefecture_lines
end

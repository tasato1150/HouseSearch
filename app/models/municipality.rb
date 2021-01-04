class Municipality < ApplicationRecord
  has_many :properties
  belongs_to :prefecture
end

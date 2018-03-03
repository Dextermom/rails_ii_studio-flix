class Genre < ApplicationRecord
has_many :charaterizations, dependent: :destroy
has_many :movies, through: :characterizations
  validates :name, presence: true, uniqueness: true
end

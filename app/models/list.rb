class List < ApplicationRecord
  belongs_to :movie
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks
end

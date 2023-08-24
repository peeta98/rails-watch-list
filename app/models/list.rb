class List < ApplicationRecord
  has_many :bookmarks
  # When list is deleted, the connection with movies is auto deleted
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end

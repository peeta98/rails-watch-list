class Bookmark < ApplicationRecord
  belongs_to :movie # TABLE NOT COLUMN
  belongs_to :list # TABLE NOT COLUMN

  # VALIDATIONS WORK ON COLUMNS
  validates :movie_id, uniqueness: { scope: :list_id } # The combination of the 2 is unique!
  validates :comment, length: { minimum: 6 }
end

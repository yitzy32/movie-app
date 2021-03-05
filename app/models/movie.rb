class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, length: { minimum: 20, maximum: 500 }
  validates :year, numericality: { greater_than: 1900, less_than: 2022 }
end

class ConcertVenue < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :bands, through: :events

  validates :name, presence: true
  validates :zip, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :date, presence: true
  validates :canton, presence: true
  validates :website, presence: true
  validates :capacity, presence: true
end

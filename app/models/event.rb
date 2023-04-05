class Event < ApplicationRecord
  belongs_to :band
  belongs_to :concert_venue

  has_many :favorite_events, dependent: :destroy
  has_many :favorited_by, through: :favorite_events, source: :user

  validates :date, presence: true
  validates :start_time, presence: true
  validates :type, presence: true
  validates :status, presence: true
  enum status: { ok: 0, reporté: 1, annulé: 2 }
end

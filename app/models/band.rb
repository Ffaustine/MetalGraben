class Band < ApplicationRecord
  has_many :events, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
end

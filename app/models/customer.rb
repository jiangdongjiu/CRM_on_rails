class Customer < ApplicationRecord
  validates :full_name, :image, presence: true
  has_one_attached :image
end

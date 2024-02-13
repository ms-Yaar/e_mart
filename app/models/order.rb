class Order < ApplicationRecord
  belongs_to :user
  has_many :products

  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :user_id, presence: true
end

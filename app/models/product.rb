class Product < ApplicationRecord
    belongs_to :orders

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
end

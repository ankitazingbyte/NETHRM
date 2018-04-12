class Award < ApplicationRecord
	validates :cash_price, format: { with: /\A\d+\z/, message: "must be in numeric." }
	 validates :gift_item,presence: true
end

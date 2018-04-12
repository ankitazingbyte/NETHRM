class Expense < ApplicationRecord
	validates :amount, format: { with: /\A\d+\z/, message: "must be in numeric." }
	validates :item_name, presence: true, uniqueness: { case_sensitive: false }, format: {with:  /\A[a-zA-Z]+\z/,
    message: "Only letters allowed"}
end
